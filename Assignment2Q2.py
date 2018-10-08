# MS(CS)  2017-AG-3677
# ASSIGNMENT NO 2

import numpy as np
import matplotlib.pyplot as plt

X1 = np.array([0,0,10,10,20,20])
print(" X = ", X1)
X2 = np.array([0,0,100,100,400,400])
print(" X = ", X2)
Y = np.array([5,7,15,17,9,11])
print(" Y = ", Y)
# Mean of X1 , X2 , Y
meanX1 = sum(X1)/len(X1)
print(" Mean of X1 = ", meanX1)
meanX2 = sum(X2)/len(X2)
print(" Mean of X2 = ", meanX2)
meanY = sum(Y)/len(Y)
print(" Mean of Y = ", meanY)
# x1i and x1i^2
x1=(sum(X1-meanX1))
print("x1 =",x1)
xx1=(sum((X1-meanX1) * (X1-meanX1)))
print("xx1 =",xx1)
# x2i and x12i^2
x2=(sum(X2-meanX2))
print("x2 =",x2)
xx2=(sum((X2-meanX2) * (X2-meanX2)))
print("xx2 =",xx2)
# yi and yi^2
y=(sum(Y-meanY))
print("y =",y)
y=(sum((Y-meanY) * (Y-meanY)))
print("y =",y)
# x1i multiply yi
x1y=(sum((X1-meanX1)*(Y-meanY)))
print("x1y =",x1y)
# x2i multiply yi
x2y=(sum((X2-meanX2) * (Y-meanY)))
print("x2y =",x2y)
# x1i multiply x2i
x1x2=(sum((X1-meanX1) * (X2-meanX2)))
print("x1x2 =",x1x2)
# b1 = (x1y*xx2) -(x1x2*x2y) / (xx1*xx2 -(x1x2*x1x2))
E=(x1y*xx2) -(x1x2*x2y)
E
D=(xx1*xx2 -(x1x2*x1x2))
D
b1=E/D
print("Estimated coefficient b1 = ", b1)
# b2 = (x2y*xx1) -(x1x2*x1y) / (xx1*xx2 -(x1x2*x1x2))
A=(x2y*xx1) -(x1x2*x1y)
A
b2= A/D
print("Estimated coefficient b2 = ", b2)
# b0 = mean(Y) - b1 *mean(X1) -b2 * mean(X2)
b0 = meanY - b1 * meanX1 -b2 * meanX2
print("Estimated coefficient b0 = ", b0)

Y_hat = b0 + b1 * X1 + b2* X2
print("Y_hat = {} + {}X1 + {}X2".format(b0,b1,b2))

Y_hat = sum(b0 + (b1 * X1) + (b2* X2))
print("Y_hat = ", Y_hat )

TSS = np.sum((Y - meanY) ** 2)
print(" TSS = ",  TSS)

SSR = np.sum((Y_hat - meanY) ** 2)
print(" SSR = ", SSR)

SSE = np.sum((Y - Y_hat) ** 2)
print(" SSE = ", SSE)

R = SSR/TSS
print(" R^2 = ", R)

mse = np.sum((Y-Y_hat) ** 2/8)
print(" MSE = ", mse)

