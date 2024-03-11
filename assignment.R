#1 Please write the command to create dataframe in R.
ID<-c(1,2,3,4,5,6,7)
Weight<-c(20,27,24,22,23,25,28)
BP<-c(140,130,120,134,100,116,143)
Locality<-c("urban","rural","urban","urban","rural","rural","urban")
Smoking<-c("no","yes","no","yes","yes","no","yes")
Tumour<-c("small","small","large","small","large","small","large")

#2 Please write the command for plotting the graph between weight and bloodpressure
socialdata<-data.frame(ID,Weight, BP, Locality, Smoking, Tumour)
socialdata
attach(socialdata)
plot(Weight,BP)
text(Weight, BP, cex=0.6, pos=1, col="black")

#3 Please write the command for creating stacked chart between smoking and tumour.
count<-table(Smoking,Tumour)
mosaicplot(count, col=c(3,7),las = 3)
