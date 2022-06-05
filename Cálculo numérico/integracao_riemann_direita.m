clear
clc

f=@(x) exp(x);
a=1;
b=3;
n=5;

h = (b-a)/n;
vx = a:h:b;
vy=f(vx);

vx
vy

aux1 = sum(vy(2:1:n));
Aq = h*aux1;
Aq