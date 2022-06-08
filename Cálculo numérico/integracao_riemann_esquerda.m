clear
clc

f=@(x) exp(x); #Definição da função
#Valores iniciais da integral
a=1;
b=3;
n=5;
#Calculo do h e tabelamento x,y
h = (b-a)/n;
vx = a:h:b;
vy=f(vx);

#Esse aux1 que soma a partir do 1 valor até n-1 é o que define como uma soma esquerda
aux1 = sum(vy(1:1:n-1));
Aq = h*aux1;
Aq