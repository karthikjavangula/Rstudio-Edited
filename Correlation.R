#Correlation

#Pearson's Rank Correlation Method
X=c(5, 10, 15, 20, 25)
Y=c(16, 19, 23, 26, 30)
cor(X,Y) # or cor(X,Y, method = "pearson")
cor(X,Y, method = "pearson") 

#Spearman's Rank Correlation Method
XX=c(78,36,98,25,75,82,90,62,65,39)
YY=c(84,51,91,60,68,62,86,58,63,47)
cor(XX,YY, method = "spearman")
