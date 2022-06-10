clear
clc

f=@(x) (10)./(x.^2); #Defini��o da fun��o
valor_aceito = false; #Variavel de apoio para verificar se a entrada do usuario foi aceita

a=input("Digite o valor INFERIOR da integra��o: ");
b=input("Digite o valor SUPERIOR da integra��o: ");
n=input("Digite a quantidade de divis�es que deve ser feito: ");

#Verifica��o se o valor digitado para n � valido
while(valor_aceito==false) #Enquanto o valor n�o for v�lido, o programa exibira um erro e ira pedir uma nova entrada
  if (n>0) 
    if (mod(n,3)!=0)
      n=input("Valor de divis�es inv�lido, digite m�ltiplo positivo de 3: ");
    else
      valor_aceito=true;
    endif
  else
    n=input("Valor de divis�es inv�lido, digite m�ltiplo positivo de 3: ");
  endif
endwhile

#Calculo do h e tabelamento x,y
h = (b-a)/n;
vx = a:h:b;
vy=f(vx)

aux1 = sum(vy(2:3:n-1)) + sum(vy(3:3:n));
aux2 = sum(vy(4:3:n-2));
s38s = (3/8*h)*(vy(1)+3*aux1+2*aux2+vy(n+1));
s38s
printf("Erro absoluto: ");
erro = s38s-7.5
printf("Erro relativo: ");
rel=erro/7.5*100