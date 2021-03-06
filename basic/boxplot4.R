#Box Plot - shaded

#http://www.r-graph-gallery.com/22-order-boxplot-labels-by-names/
#Create data
a=rnorm(100 , mean=0 , sd=30)
b=rnorm(100 , mean=40 , sd=100)
c=rnorm(100 , mean=100 , sd=50)
d=rnorm(100 , mean=200 , sd=200)
e=rnorm(100 , mean=300 , sd=60)
f=rnorm(100 , mean=100 , sd=30)
g=rnorm(100 , mean=20 , sd=200)
h=rnorm(100 , mean=40 , sd=100)

#Graphic window parameters :
par(bg=rgb(0.8,0.8,1,0.5) )
par(mar=c(0,0,0,0))

#Make the boxplot
boxplot(a,b,h,f,d,e,c,g , xlab="" , ylab="" , ylim=c(-50,400) , col=cm.colors(8) )
abline( h=c(0,150,300,450) , col="white")
