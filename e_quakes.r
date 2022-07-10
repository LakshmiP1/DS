equakes <- datasets::quakes
head(equakes,10)
tail(equakes,10)
equakes[,c(1,2)]
df <- equakes[,-6]
summary(equakes[,1])
equakes$depth
#summary of the data
summary(equakes)
summary(equakes$depth)
plot(equakes$depth)
plot(equakes$depth,equakes$mag,type="p")
plot(equakes)
#points and lines
plot(equakes$mag,type="l")# p:points,l:lines,b:both(lines and points)

plot(equakes$depth, xlab = 'depth', 
     ylab = 'No of Instances', main = 'depth of earthquake',
     col = 'blue')

#horizontal bar plot
barplot(equakes$depth, xlab='depth', main = 'depth of earthquake',
        ylab = 'depth level', col= 'blue',horiz = F,axes=T)

#histogram
hist(equakes$long)
hist(equakes$long, 
     main = 'Longitude of the earthquake',
     xlab = 'Longitude.', col='blue')
#Single box plot
boxplot(equakes$lat,main="Boxplot")
boxplot.stats(equakes$lat)$out

# Multiple box plots
boxplot(equakes[,1:4],main='Multiple')
#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="o")
plot(equakes$depth)
plot(equakes$depth, equakes$stations)
plot(equakes$depth, type= "l")
plot(equakes$depth, type= "l")
plot(equakes$depth, type= "l")
barplot(equakes$mag, main = 'magnitude of eartquake',
        xlab = 'magnitude levels', col="green",horiz = FALSE)
hist(equakes$stations)
boxplot(equakes$stations)$out
boxplot(equakes[,0:4], main='Multiple Box plots')$out


sd(equakes$long,na.rm = F)

var(equakes$lat,na.rm = F)
skewness(equakes$depth)
kurtosis(equakes$depth)
help(kurtosis)
