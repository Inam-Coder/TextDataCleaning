file.exists("D://Data Science Track//R_Programming//data")
natGS<-read.csv("D://Data Science Track//R_Programming//data//NatGas.csv")
head(natGS)
names(natGS)
tolower(names(natGS))
#Text Data Cleaning
library(tm)
sentence<-c("Ali is nice person","This number is devided into 2 annd 8","Aisha street 2b house")
sentence
txt<-Corpus(VectorSource(sentence))
txt
txt_data<-tm_map(txt,stripWhitespace)
txt_data<-tm_map(txt_data,tolower)
txt_data
txt_data<-tm_map(txt_data,removeNumbers)
txt_data<-tm_map(txt_data,removePunctuation)
txt_data1<-tm_map(txt_data,removeWords,stopwords("english"))
df<-data.frame(cln_tex=unlist(txt_data),stringsAsFactors = FALSE)
df$cln_tex
#Graph ....
library(worldcloud)
wordcloud(txt_data,scale = c(5,0,5),random.order = FALSE,rot.per = 0.35,use.r.layout = FALSE,colors = brewer.pal(8,"Dark2"))
