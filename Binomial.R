#Binomial Distribution

#Here X denotes the number of wells with impurity
# X = {0,1,2,3,4,5,6,7,8,9,10}
n=10
p=0.30
q=1-p

#(i) P(X=3)
prob_exactly_three_wells = dbinom(x=3,n,p)
round(prob_exactly_three_wells,2)

#(ii) P(X>3) = 1-P(X<=3)
prob_morethan_three_wells = 1-pbinom(3,n,p)
round(prob_morethan_three_wells,2)

#(iii) Creating Table
x = seq(0,10)
x
px = round(dbinom(x,n,p),2)
px
data.frame(x,px)

#(iv) Plotting
plot(x,px,type="o",xlab="values of x",ylab="Probability distribution of x",main="Binomial Distribution")
