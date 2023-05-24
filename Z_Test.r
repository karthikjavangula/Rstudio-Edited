#Large Sample test
#critical value
alpha=0.05                #5% LoS
zalpha1=qnorm(1-alpha)    #One Tailed Test
zalpha1
zalpha2=qnorm(1-alpha/2)  #Two Tailed Test
zalpha2
#alpha = 0.05 or 0.01 or 0.10
#alpha can be any number

#Problem 1
#Solution
n1=1000
n2=200
x1bar=67.5
x2bar=68
sigma1=2.5
sigma2=2.5

#Step 1 :
# H0 = sigma1 = sigma2 = 2.5
# H1 = sigma1 not = sigma2

#Step 2 :
alpha = 0.05   #Assume the LoS

#Step 3 : 
z = (x1bar-x2bar)/sqrt((sigma1^2/n1)+(sigma2^2/n2))
abs(z)         #Absolute Value of 'z'
  
#Step 4 : 
zalpha = qnorm(1-alpha/2)
zalpha

#Step 5 : 
if(abs(z)<zalpha){print("H0 is accepted at 5% Los")}else {print("H0 is rejected at 5% LoS")}




#Problem 2
#Solution
n=50
xbar=9900
mu=10000
sigma=120

#Step 1 :
# H0 = xbar <= mu
# H1 = xbar > mu (One Tailed Test)

#Step 2 :
alpha = 0.05   #Assume the LoS

#Step 3 : 
z=(xbar-mu)/sqrt((sigma^2/n))
abs(z)         #Absolute Value of 'z'

#Step 4 : 
zalpha = qnorm(1-alpha)
zalpha

#Step 5 : 
if(abs(z)<zalpha){print("H0 is accepted at 5% Los")}else {print("H0 is rejected at 5% LoS")}



#Problem 3
#Solution
p=0.1726
q=1-p
pbar=0.0984
n=640

#Step 1 :
# H0 = pbar >= p
# H1 = pbar < p  (One Tailed Test)

#Step 2 :
alpha = 0.05   #Assume the LoS

#Step 3 : 
z=(pbar-p)/sqrt((p*q/n))
abs(z)         #Absolute Value of 'z'

#Step 4 : 
zalpha = qnorm(1-alpha)
zalpha

#Step 5 : 
if(abs(z)<zalpha){print("H0 is accepted at 5% Los")}else {print("H0 is rejected at 5% LoS")}





#Problem 4
#Solution
n1=1000
n2=1200
p1=800/1000
p2=800/1200
P=((n1*p1)+(n2*p2))/(n1+n2)
Q=1-p

#Step 1 :
# H0 = p1  >= p2
# H1 = p1 < p2  (One Tailed Test)

#Step 2 :
alpha = 0.05   #Assume the LoS

#Step 3 : 
z=(p1-p2)/sqrt((P*Q*(1/n1+1/n2)))
abs(z)         #Absolute Value of 'z'

#Step 4 : 
zalpha = qnorm(1-alpha)
zalpha

#Step 5 : 
if(abs(z)<zalpha){print("H0 is accepted at 5% Los")}else {print("H0 is rejected at 5% LoS")}
