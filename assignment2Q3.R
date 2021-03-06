# ASSIGNMENT NO 2
# MS(CS)  2017-AG-3677

Y = c(2 ,3, 6, 9, 12,9,14)
X1 = c(10, 30 , 20,25,30,15 ,5)
X2 = c(5,8,2,4,9,2,4)

dat=data.frame(X1 ,X2,Y )
dat
# Mean of X1,X2 and Y
mean(Y)
mean(X1)
mean(X2)
# x1i and x1i^2
x1=sum(X1-mean(X1))
print(x1)       
xx1=sum((X1-mean(X1))*(X1-mean(X1)))
print(xx1)
# x2i and x2i^2
x2=sum(X2-mean(X2))
print(x2)
xx2=sum((X2-mean(X2))*(X2-mean(X2)))
print(xx2)
# yi and yi^2
y=sum(Y-mean(Y))
print(y)
yy=sum((Y-mean(Y))*(Y-mean(Y)))
print(yy)
# x1i multiply yi
x1y=sum((X1-mean(X1)) * (Y-mean(Y)))
print(x1y)
# x2i multiply yi
x2y=sum((X2-mean(X2)) * (Y-mean(Y)))
print(x2y)
# x1i multiply x2i
x1x2= sum((X1-mean(X1)) * (X2-mean(X2)))
print(x1x2)
# b 1= (x1y*xx2) -(x1x2*x2y) / (xx1*xx2 -(x1x2*x1x2))
E=(x1y*xx2) -(x1x2*x2y)
E
D=(xx1*xx2 -(x1x2*x1x2))
D
b1=E/D
print(b1)
# b2 = (x2y*xx1) -(x1x2*x1y) / (xx1*xx2 -(x1x2*x1x2))
A=(x2y*xx1) -(x1x2*x1y)
A 
b2= A/D
print(b2)
# b0 = mean(Y) - b1 *mean(X1) -b2 *mean(X2)
b0=mean(Y) - b1 *mean(X1) -b2 *mean(X2)
b0

regression <- lm(Y ~ X1 + X2)
summary(regression)
confint(regression)

TSS= sum((Y-mean(Y))* (Y-mean(Y)))
TSS

Y.hat = sum(b0+(b1*X1)+(b2*X2))
Y.hat

SSR =sum((Y.hat-mean(Y)) * (Y.hat-mean(Y)))
SSR

SSE = sum((Y-Y.hat) *(Y-Y.hat))
SSE

RR = SSR/TSS
RR

MSE = sum((Y-Y.hat) ** 2/4)
MSE

Var.b1 = MSE*xx2 /D
Var.b1
Var.b2 = MSE*xx1 /D
Var.b2
Var.b0 = MSE* (1/7) + (mean(X1) * xx2 +mean(X2) *xx2 -2 *mean(X1)*mean(X2)*x1x2)  / D 
Var.b0

T.cal=b1/Var.b1
T.cal
T.cal=b2/Var.b2
T.cal
T.cal=b0/Var.b0
T.cal

standardDev = print(sd(X1 + x2 + Y))
variance = var(X1)
variance
T.cal=t.test(X1+X2+Y)
T.cal
A<-lm(Y~ X1+X2)
anova(A)