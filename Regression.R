#Regression Analysis

X=c(23,27,28,28,29,30,31,33,35,36)
Y=c(18,20,22,27,21,29,27,29,28,29)
cor(X,Y)

#Regression equation Y on X
Regr=lm(Y~X) #lm means linear model
Regr

plot(X,Y,main="X data vs. Y data",xlab="X data",ylab="Y data",col="red")
abline(lm(Y~X))


#Regression equation X on Y
Regr=lm(X~Y) #lm means linear model
Regr

plot(Y,X,main="Y data vs. X data",xlab="Y data",ylab="X data",col="red")
abline(lm(X~Y))
