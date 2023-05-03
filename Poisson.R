#Poisson Distribution

#Problem 1
lambda = 12 #12 cars per minute
#X denotes the no.of cars crossing the bridge
# per minute
# P(x>=17) = 1 - P(x<=16)
Prob = 1 - ppois(16,lambda)
round(Prob,4)


#Problem 2
#(i)
lambda = 1.6 #10 minutes of interval

#X denotes the no of customers using the ATM
# for any 10 minutes of interval
#(ii)
prob_exactly_three = dpois(3,lambda)
prob_exactly_three

#(iii) P(X<=3)
prob_three_or_fewer = ppois(3,lambda)
prob_three_or_fewer

#(iv) P(X>=3) = 1 - P(X<=2)
# Here, lambda = 2*1.6 = 3.2
# since it is for any 20 minutes of interval
prob_atleast_three = 1 - ppois(2,3.2)
prob_atleast_three

#(v)
X = seq(0,11)
prob = round(dpois(X,1.6),4)
#Creating table
data.frame(X,prob)
#Plotting
plot(X, prob, type = "o")
