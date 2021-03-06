# Graph - Date

# Create data
set.seed(124)
date=paste(   "2015/03/" , sample(seq(1,31),6) , sep="")
value=sample(seq(1,100) , 6)
data=data.frame(date,value)

# Date and time are recognized as factor:
str(data)
# So ploting them works bad --> wrong order, date without value are not represented, 
plot(data$value~data$date)


# Let's change the date to the "date" format:
data$date=as.Date(data$date)

# So we can sort the table:
data=data[order(data$date) , ]

# and replot --> R now understand how to plot it!
plot(data$value~data$date)

# Easy to make it better now:
plot(data$value~data$date , type="b" , lwd=3 , col=rgb(0.1,0.7,0.1,0.8) , ylab="value of ..." , xlab="date" , bty="l" , pch=20 , cex=4)
abline(h=seq(0,100,10) , col="grey", lwd=0.8)
