

library(ggplot2)
nmmaps<-read.csv("poky-nmmaps.csv", as.is=T)
nmmaps$date<-as.Date(nmmaps$date)
nmmaps<-nmmaps[nmmaps$date>as.Date("1996-12-31"),]
nmmaps$year<-substring(nmmaps$date,1,4)
head(nmmaps)
g<-ggplot(nmmaps, aes(date, temp))+geom_point(color="firebrick")
g

