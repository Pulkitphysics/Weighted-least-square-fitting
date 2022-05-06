clc
clear
clf
x= [0,2,5,7]
w= [1,1,10,1]
y= [-1,5,12,20]
wx = sum(w.*x)
wx2 = sum(w.*x.*x)
wy = sum(w.*y)
wy2 = sum(w.*y.*y)
wxy = sum(w.*x.*y)
sol = [wy;wxy]
coef = [sum(w), wx ; wx, wx2]
ans = inv(coef)*sol
a0 = ans(1,:)
a1 = ans(2,:)
plot2d(x,y)
y = a0 + a1*x
plot2d(x,y,4)
