clear
clc

f=@(x) exp(x);
a=1;
b=3;
n=8;

h = (b-a)/n;
vx = a:h:b;
vy=f(vx);

aux1 = sum(vy(2:2:n));
aux2 = sum(vy(3:2:n));
s13s = (1/3*h)*(vy(1)+4*aux1+2*aux2+vy(n+1));
s13s