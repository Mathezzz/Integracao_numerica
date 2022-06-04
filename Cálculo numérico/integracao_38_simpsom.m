clear
clc

f=@(x) exp(x);
a=1;
b=3;
n=9;

h = (b-a)/n;
vx = a:h:b;
vy=f(vx);

aux1 = sum(vy(2:3:n-1)) + sum(vy(3:3:n));
aux2 = sum(vy(4:3:n-2));
s38s = (3/8*h)*(vy(1)+3*aux1+2*aux2+vy(n+1));
s38s