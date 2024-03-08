ages = c(21,30,40,22,45,50,51,23,25,35)
plot(ages)
salary = c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot(salary)

plot(ages,salary)
plot(salary,ages)

help(plot)
##############################
#airquality = read.csv('path',header='TRUE,sep=',')
#click on import Ddataset
data()
aq = datasets::airquality

# import top n10 and last 10 rows
head(aq,10)
tail(aq,10)
names(aq)
 
aq[,c(1,2)] # all rows and frist two col

df = aq[,-6]# excludes col no 6
df

summary(aq[,1])#summary statistics for col 1

summary(aq$Temp)# summary of  col 

aq$Wind #display col values 
######summary of the col############
summary(aq)#summary for all col

##############visualization
plot(aq$Wind)
plot(aq$Temp,aq$Wind,type = 'p')
plot(aq) # scatterplot
help(plot)
plot(aq$Ozone,aq$Month)
plot(aq$Month,aq$Ozone)
#points and lines 
plot(aq$Wind,type='p')#p:points , l:lines , b : both
plot(aq$Wind,type='l')
plot(aq$Wind,type='b')

plot(aq$Wind,
     xlab = 'ozone concentration',
     ylab = 'no of instances',
     main = 'ozone levels in ny city',
     col='blue',
     type='b')
plot(aq,col='red')
plot(aq$Ozone,aq$Solar.R) #axis willl change or wise versa

# horizontal bar plot
barplot(aq$Ozone,
        main = 'ozone concenteration in air',
        ylab ='ozone levels',
        col='blue',
        horiz=T,
        axes=F)

#Histogram
hist(aq$Temp)
hist(aq$Temp,
     main = 'solar radiation values in air',
     xlab = 'solar rad.',
     col='blue',
     border = 'red')
#single box plot 
boxplot(aq$Wind,
        main='boxplot',
        col='blue',
        border='red',
        horizontal = T)
boxplot.stats(aq$Wind)$out #outlier value
aq$Wind

#multiple box plots 
boxplot(aq[,1:4],
        main = 'multiple box plots',
        horizontal = T,
        col= 'pink')
help(par)
par(mfrow=c(3,3),mar=c(1,2,1,2),las=1,bty='o')
plot(aq$Ozone)
plot(aq$Ozone,aq$Wind)
plot(aq$Ozone,type = 'l')
plot(aq$Wind,type='l')
plot(aq$Solar.R,type = 'l')
boxplot(aq$Ozone,
        main='boxplot',
        col='blue',
        border='red',
        horizontal = T)
hist(aq$Solar.R)
boxplot(aq$Solar.R)
boxplot(aq[,0:4],
        main = 'multiple box plots')
#considering NA values 
aq
max(aq$Wind)
min(aq$Temp)
min(aq$Solar.R)
mean(aq$Solar.R)
mean(aq$Wind)
mean(aq$Solar.R,na.rm = T)
median(aq$Ozone)
median(aq$Ozone,na.rm = T)
min(aq$Ozone)
min(aq$Ozone,na.rm = T)
var(aq$Wind)
sd(aq$Ozone)
sd(aq$Ozone,na.rm = T)
skewness(aq$Ozone,na.rm = T)
kurtosis(aq$Ozone,na.rm = T)
skewness(aq[1:4],na.rm = T)

#density plot 
plot(density(aq$Wind))
plot(density(aq$Ozone,na.rm = T))
##homework apply all commands on this dataset
earthquakes=datasets::quakes

