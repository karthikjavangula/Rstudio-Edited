#Correlation 
#Multiple and partial correlation
X=c(23,27,28,28,29,30,31,33,35,36)
Y=c(18,20,22,27,21,29,27,29,28,29)
Z=c(10,22,32,30,5,36,16,19,25,30)

r_XY=cor(X,Y)
r_XY
r_YZ=cor(Y,Z)
r_YZ
r_XZ=cor(X,Z)
r_XZ

#Multiple Correlation X on Y and Z
R_X_YZ=sqrt((r_XY^2 + r_XZ^2 - 2*r_XY*r_YZ*r_XZ)/(1-r_YZ^2))
R_X_YZ

#Multiple Correlation Y on X and Z
R_Y_XZ=sqrt((r_XY^2 + r_YZ^2 - 2*r_XY*r_YZ*r_XZ)/(1-r_XZ^2))
R_Y_XZ

#Multiple Correlation Z on X and Y
R_Z_XY=sqrt((r_XZ^2 + r_YZ^2 - 2*r_XZ*r_YZ*r_XY)/(1-r_XY^2))
R_Z_XY

#Partial Correlation between X and Y , Z keeping constant
r_XY_Z=(r_XY-r_XZ*r_YZ)/sqrt((1-r_XZ^2)*(1-r_YZ^2))
r_XY_Z

#Partial Correlation between Y and Z , X keeping constant
r_YZ_X=(r_YZ-r_XY*r_XZ)/sqrt((1-r_XY^2)*(1-r_XZ^2))
r_YZ_X

#Partial Correlation between X and Z , Y keeping constant
r_XZ_Y=(r_XZ-r_XY*r_YZ)/sqrt((1-r_XY^2)*(1-r_YZ^2))
r_XZ_Y
