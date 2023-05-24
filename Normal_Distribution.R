#Ex.7
#Normal Distribution
mean = 527
sd = 112
1 - pnorm(400 , mean , sd)
1 - pnorm(-0.24 , 0 , 1)

qnorm(0.95 , mean , sd)
qnorm(0.95 , 0 , 1)

z = 1.644854
x = z*sd + mean
x





#Problem 2
mean = 4300
sd=750

#(i) P(2500< X < 4200) = P(X<4200) - P(X<2500)
Prob_Btn_2500_4200 = pnorm(4200,mean,sd) - pnorm(2500,mean,sd)
Prob_Btn_2500_4200

#(ii) P(X>=3500) = 1 - P(X<3500)
#N.D.
Prob_atleast_3500 = 1 - pnorm(3500,mean,sd)
Prob_atleast_3500

#(iii) x-value for 38%
#N.D.
x_value = qnorm(0.38,mean,sd)
x_value

#(iv) P(X <= 3500) = P(X < 3500)
#N.D.
P_atmost_3500 = pnorm(3500,mean,sd)
P_atmost_3500

#(v) Graph 2000 to 7050
x = seq(2000,7050,length=150)
y = dnorm(x,mean,sd)
data.frame(x,y)
plot(x,y,type="l")


# A company finds that the time taken by one of its engineers to complete or repair job has a normal distribution with mean 20 minutes and SD 5 minutes. State what proportions of jobs take:
#(i) Less than 15 minutes
#(ii) More than 25 minutes
#(iii) Between 15 and 25 minutes
#(iv) Plot the Distribution 
#(v) Table the Distriubtion
