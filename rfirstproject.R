ID<-c(1,2,3,4,5,6,7,8)
Gender<-c("male", "female", "female", "male","male", "female", "male", "female")
Age<-c(25,30,65,45,32,50,22,28)
Weight<-c(80,64,76,90,45,50,70,65)
Height<-c(1.83,1.75,1.57,1.65,1.94,1.85,1.53,1.62)
Cholestrol<-c(15,18,25,30,40,32,23,28)
Income<-c(15000,20000,35000,12000,50000,8000,60000,9000)
#LHS=RHS
#Liberty, Rule
socialdata<-data.frame(ID,Gender, Age, Weight,Height, Cholestrol,Income)
socialdata
attach(socialdata)
help(plot)
plot(Weight, Cholestrol,
     main="IBM CSR initiative",
     sub = "Engineering Students",
    # col=2, #colour change
     col="red",
     pch=19) #icon change 1 to 25

text(Weight, Cholestrol, cex=0.6, pos=1, col="black")
text(Weight, Cholestrol, Gender, cex=0.9, pos=2, col="red")
text(Weight, Cholestrol, Weight, cex=0.7, pos=3, col="blue")
text(Weight, Cholestrol, Cholestrol, cex=0.6, pos=4, col="green")

plot(Cholestrol~Weight) #here cholestrol is independent and weight is dependednt? ~ means tilde
# Commands are followed by () and datasets variables by []

points(Cholestrol[Gender=="male"]~Weight[Gender=="male"], 
       main="Weight vs. Cholestrol", 
       xlab="Weight", ylab="Cholestrol", col="blue", pch=16)
points(Cholestrol[Gender=="female"]~Weight[Gender=="female"], 
       main="Weight vs. Cholestrol", 
       xlab="Weight", ylab="Cholestrol", col="red", pch=10)
#x label


abline(lm(Cholestrol~Weight))
abline(lm(Cholestrol[Gender=="male"]~Weight[Gender=="male"]),col=2)
abline(lm(Cholestrol[Gender=="female"]~Weight[Gender=="female"]),col=3)

id<-c(1,2,3,4,5,6,7)
weight<-c(20,27,24,22,23,25,28)
gender<-c("male","female", "female","male","male","female","male")
smoking<-c("no", "yes", "no", "yes","yes","no","yes")
tumour<-c("small", "large", "medium", "large","medium","large","small")
mydata<-data.frame(id,weight,gender,smoking,tumour)
mydata

attach(mydata)
count <- table(smoking)
count

percent<-(count/7)*100
percent

barplot(percent,
        col=7)

#different colors for both bars
barplot(percent,
        col=c(3,7), #c for combine? or c("red","blue")

        density = 45)

#different density for no and yes
barplot(percent,
        col=c(3,7), #c for combine? or c("red","blue")
        
        density = c(80,40))
#change angle of lines
barplot(percent,
        col=c(3,7), #c for combine? or c("red","blue")
        
        density = c(30,70),
        angle = c(0,90),
        horiz = T,
        border = 6,
        las=3)#flip x and y axis
counts <- table(gender,smoking)
counts

barplot(counts, 
        main='Smoking', 
        xlab = 'Smoker', 
        ylab='%', 
        las=3, 
        names.arg = c('No','Yes'), col=c("darkblue","red"),
        legend = rownames(counts), space=1,
        beside = F)
grid()

# Colored Mosaic Plot
mosaicplot(counts, col=c(3,8),las = 3)

pie(count,
    col=c(2,3),
    density=c(20,30),
    angle=c(40,50),
    border = 3,
    radius=0.8)
