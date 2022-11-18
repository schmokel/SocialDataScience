library(rtweet)
library(igraph)
library(tidyverse)
library(ggraph)
library(tidygraph)


# A modified version of the boiler plate in the lab syllabus
# Use it as a point of departure for your own RQ and modify it as you see fit

users <- rtweet::users_data(tweets)


data <- cbind(tweets, users_data(tweets) ,id_str = users_data(tweets)[, "id_str"])

data <- data[, !duplicated(colnames(data), fromLast = TRUE)]



## Create graph
#net <- data %>% 
#  filter(retweet_count > 0) %>% 
#  select(screen_name, in_reply_to_screen_name ) %>%
#  unnest(in_reply_to_screen_name ) %>% 
#  filter(!is.na(in_reply_to_screen_name )) %>% 
#  graph_from_data_frame() 



#summary(net)

#plot(net, edge.arrow.size=.4, edge.curved=.1)




## Data cleaning and visualization
data %>% 
  group_by(screen_name) %>%
  summarise(total_retweet = sum(retweet_count)) %>%
  arrange(desc(total_retweet)) %>% 
  head()


edge_df <-
  data %>% 
  select(screen_name, in_reply_to_screen_name) %>% #Step 1
  separate_rows(in_reply_to_screen_name, sep = " ") %>% #Step 2
  filter(in_reply_to_screen_name != "") %>% #step 3
  rename(from = screen_name,
         to = in_reply_to_screen_name) #Step 4

edge_df



nodes_df <- data.frame(name = unique(c(edge_df$from,edge_df$to)),
                       stringsAsFactors = F)


graph_tweets <- tbl_graph(nodes = nodes_df,
                          edges = edge_df,
                          directed = F)


graph_tweets <- graph_tweets %>% 
  activate(nodes) %>%
  mutate(degree = centrality_degree(), # Degree centrality
         between = centrality_betweenness(normalized = T), # Betweeness centrality
         closeness = centrality_closeness(), # Closeness centrality
         eigen = centrality_eigen() # Eigen centrality
         )

#Convert graph data into data frame
network_act_df <- graph_tweets %>% 
  activate(nodes) %>% 
  as.data.frame()

pop_username <- data.frame(
  network_act_df %>% arrange(-degree) %>% select(name) %>% head(),
  network_act_df %>% arrange(-between) %>% select(name) %>% head(),
  network_act_df %>% arrange(-closeness) %>% select(name) %>% head(),
  network_act_df %>% arrange(-eigen) %>% select(name) %>% head()
) %>% setNames(c("Degree","Betweenness","Closeness","Eigen"))

pop_username

data %>% 
  filter(in_reply_to_screen_name == "RasmusJarlov") %>%
  group_by(in_reply_to_screen_name, text) %>% 
  tally() %>% 
  arrange(-n) %>%
  pull(text) %>% 
  head(3)

# Graph visualization

#Louvain method for community structures

set.seed(123)
graph_tweets <- graph_tweets %>% 
  activate(nodes) %>% 
  mutate(community = group_louvain()) %>% # clustering
  activate(edges) %>% 
  filter(!edge_is_loop())  # Remove loop edges

#28 communities
graph_tweets %>% 
  activate(nodes) %>% 
  as.data.frame() %>% 
  count(community)



#To gathered information from Important Username 
#within each cluster, we will create function and assign it into object called important_user

important_user <- function(data) {
  name_person <- data %>%
    as.data.frame() %>% 
    filter(community %in% 1:5) %>% 
    select(-community) %>% 
    pivot_longer(-name, names_to = "measures", values_to = "values") %>% 
    group_by(measures) %>% 
    arrange(desc(values)) %>% 
    slice(1:6) %>% 
    ungroup() %>% 
    distinct(name) %>% 
    pull(name)
  
  return(name_person)
}


#create object contain important person
important_person <- 
  graph_tweets %>% 
  activate(nodes) %>% 
  important_user()



set.seed(123)
graph_tweets %>%
  activate(nodes) %>%
  mutate(ids = row_number(),
         community = as.character(community)) %>%
  filter(community %in% 1:3) %>% # number of community.
  arrange(community,ids) %>%
  mutate(node_label = ifelse(name %in% important_person, name,NA)) %>%
  ggraph(layout = "fr") +
  geom_edge_link(alpha = 0.3 ) +
  geom_node_point(aes(size = degree, fill = community), shape = 21, alpha = 0.7, color = "grey30") +
  geom_node_label(aes(label = node_label), repel = T, alpha = 0.8 ) +
  guides(size = "none") +
  labs(title = "Top 3 Community of #SecureTheTribe",
       color = "Interaction",
       fill = "Community") +
  theme_void() +
  theme(legend.position = "top")



# But the above plot does not look very nice, does it???
# Try to make it prettier but first and foremost more informative. Where are e.g. the edges between the nodes? 
# What research question are we answering?
# Also you can try to graph based on predefined groups (e.g. party membership) instead of relying on the Louvain method (which might, might not, be meaningful) 
# Also are you even interested in the dummy data? Try to filter or slice it
#you can research big parts of the above code

