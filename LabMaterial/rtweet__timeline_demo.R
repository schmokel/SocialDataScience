library(rtweet)
library(tidyverse)


# See their forum for bug 
#https://discuss.ropensci.org/t/rtweet-get-timeline-no-longer-showing-user-id-or-screen-name/3034/5
#solution is to install the dev version from github:
#remotes::install_github("ropensci/rtweet@devel")

auth <- rtweet_app()

members <- lists_members(list_id = "967855228488908800")

tweets <- rtweet::get_timeline(
  user = members$screen_name,
  n = 5)


users <- rtweet::users_data(tweets)

data <- cbind(tweets, users_data(tweets), id_str = users_data(tweets)[, "id_str"])



