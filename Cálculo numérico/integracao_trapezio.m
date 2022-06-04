clear
clc

f=@(x) exp(x);
a=1;
b=3;
n=6;

h = (b-a)/n;
vx = a:h:b;
vy=f(vx);

vx
vy

aux1 = sum(vy(2:1:n));
aux1
At = (1/2*h)*(vy(1)+2*aux1+vy(n+1));
At