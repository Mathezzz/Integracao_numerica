clear
clc

f=@(x) exp(x); #Defini��o da fun��o
#Valores iniciais da integral
a=1;
b=3;
n=6;
#Calculo do h e tabelamento x,y
h = (b-a)/n;
vx = a:h:b;
vy=f(vx);

aux1 = sum(vy(2:1:n));
At = (1/2*h)*(vy(1)+2*aux1+vy(n+1));
At