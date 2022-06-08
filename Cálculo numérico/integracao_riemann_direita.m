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

#Esse aux1 que soma a partir do 2 valor até n é o que define como uma soma direita
aux1 = sum(vy(2:1:n));
Aq = h*aux1;
Aq