
library(memisc)
library(car)
library(irr)
library(sandwich)
library(pBrackets)
library(quanteda)
library(maptools)
library(pacman)
p_load(readxl, tidyverse, dplyr, groupdata2)


#Note: Approach below is based on Monroe, Colaresi and Quinn. 2008. "Fightin' Words" Political Analysis 16: 372-403.

#set scaling parameter (alpha0)
w <- 500		#sets weight of prior (w > 0)

full_data <- read_excel("preprocessed_withSentiment_withWordcount.xlsx") %>% 
  dplyr::select(Q35_clean, condition, descriptive_direct) %>%  
  dplyr::filter(descriptive_direct == 1) %>% dplyr::select(Q35_clean, condition)

full_data$condition_num <- as.factor(full_data$condition)
levels(full_data$condition_num) <- c(1,3,2)
full_data$condition_num <- as.numeric(full_data$condition_num)

#aggregate open-response into four documents (+ overall doc for prior) and construct corpus
textAg=c(paste(as.character(full_data$Q35_clean[which(full_data$condition_num==1)]),collapse=" "),
         paste(as.character(full_data$Q35_clean[which(full_data$condition_num==3)]),collapse=" "),
         paste(as.character(full_data$Q35_clean[which(full_data$condition_num==2)]),collapse=" "),
         paste(as.character(full_data$Q35_clean[]),collapse=" ")) 	#used for prior distribution of words (across whole corpus)	


corp	<-corpus(textAg)

#construct document feature matrix

textDfm <- corp %>% 
  tokens() %>% 
  tokens_remove(stopwords("da"), padding = TRUE) %>% 
  tokens_keep(min_nchar = 1) %>% # keep only tokens that are at least 1 character (ie remove NA tokens)
  tokens_wordstem(language ="danish") %>% 
  dfm()

#calculate prior for smoothing/shrinkage
#alpha <- rep(0.01,ncol(textDfm)) 				#uninformative prior (same for every word)
alpha  <- (colSums(textDfm[4,])*w) / sum(textDfm[4,])	#set informative prior based on word-prevalence across entire corpus

#estimate posterior log-odds
wd<-matrix(NA,nc=ncol(textDfm),nr=3) #holder object
for (k in 1:3){
  wd[k,]<-(colSums(textDfm[k,])+alpha) / (sum(colSums(textDfm[k,]))+sum(alpha)-colSums(textDfm[k,])-alpha)
}
colnames(wd)<-colnames(textDfm)

wd_rep<-log2(wd[1,]/wd[2,]) #treatment effect odds ratio (logged)


#estimate variance of point estimate
wd_var_rep <- 1/(colSums(textDfm[1,])+alpha) + 1/(colSums(textDfm[2,])+alpha)

#standardize to z-scores
z_scoreNeg <- wd_rep / sqrt(wd_var_rep)

#get rid of words with z < 1.97
z_score_subNeg <- z_scoreNeg[abs(z_scoreNeg)>1.97]
sort(z_score_subNeg)

#store frequency of word
freqNeg<-colSums(textDfm[c(1,2),])


# PLOTTING 1
# konfidensinvertal//signifikans-niveau konstant:
#68%	1
#90%	1,645
#95%	1,96
#99%	2,58
const <- 1.96
ylimit <- round(max(abs(z_scoreNeg)))

par(omd=c(0,1,0,1),mfrow=c(1,1))
pdf('wordusage_DA.pdf',width=12,height=6)
cl=rgb(0.2,0.2,0.2,alpha=.75) #sets text color
cl="black" #sets text color
par(omd=c(0.05,.925,0,1))
plot(log2(freqNeg[z_scoreNeg>const]), z_scoreNeg[z_scoreNeg>const],
     xlim=c(0,max(log2(freqNeg))),ylim=c(-1*ylimit,ylimit),col="white",yaxt='n',xaxt='n',xlab="",ylab="")
abline(h=0,lty=2)
axis(1, at = seq(0, max(log2(freqNeg))))
axis(2,cex.axis=1,las=2,at=seq(-1*ylimit,ylimit,1))
mtext(1, line=2, text = "Word Frequency (logged)")
mtext(2,line=2,text="Log Odds Ratio (Z-scores)")
arrows(-8,-3,-8,3,xpd=T,length=0.1,lwd=1,code=3)
text(0,-1*ylimit+2.75,labels="More prevalent word in\nobjectivity condition",xpd=T,srt=90)
text(0,ylimit-2.75,labels="More prevalent word in\nclickbait condition",xpd=T,srt=90)
points(log2(freqNeg), z_scoreNeg,pch=21,bg="grey70",col="grey70",cex=.5)
point_scaling <- 2*(abs(z_scoreNeg[abs(z_scoreNeg)>const])/max(abs(z_scoreNeg[abs(z_scoreNeg)>const])))
points(log2(freqNeg[abs(z_scoreNeg)>const]),z_scoreNeg[abs(z_scoreNeg)>const],pch=21,col="grey0",bg="grey0",cex=point_scaling)

#plot top 2% words
set.seed(123)
#z_scorePos<-na.omit(z_scorePos)
pointLabel(log2(freqNeg[abs(z_scoreNeg)>const]),
           z_scoreNeg[abs(z_scoreNeg)>const],
           labels = names(z_scoreNeg[abs(z_scoreNeg)>const]),
           cex=.8,pos=1,col=cl,allowSmallOverlap=FALSE)

dev.off()




