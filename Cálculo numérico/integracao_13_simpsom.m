clear
clc

f=@(x) exp(x); #Defini��o da fun��o
valor_aceito = false; #Variavel de apoio para verificar se a entrada do usuario foi aceita

a=input("Digite o valor INFERIOR da integra��o: ");
b=input("Digite o valor SUPERIOR da integra��o: ");
n=input("Digite a quantidade de divis�es que deve ser feito: ");

#Verifica��o se o valor digitado para n � valido
while(valor_aceito==false) #Enquanto o valor n�o for v�lido, o programa exibira um erro e ira pedir uma nova entrada
  if (mod(n,2)!=0)
    n=input("Valor de divis�es inv�lido, digite um valor m�ltiplo de 2: ");
  else
    valor_aceito=true;
  endif
endwhile

#Calculo do h e tabelamento x,y
h = (b-a)/n;
vx = a:h:b;
vy=f(vx);

aux1 = sum(vy(2:2:n));
aux2 = sum(vy(3:2:n));
s13s = (1/3*h)*(vy(1)+4*aux1+2*aux2+vy(n+1));
s13s