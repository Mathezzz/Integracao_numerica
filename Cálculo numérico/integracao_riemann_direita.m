clear
clc

f=@(x) (10)./(x.^2); #Defini��o da fun��o
valor_aceito=false;
#Valores iniciais da integral
a=input("Digite o valor INFERIOR da integra��o: ");
b=input("Digite o valor SUPERIOR da integra��o: ");
n=input("Digite a quantidade de divis�es que deve ser feito: ");

#Validando a entrada do usu�rio
while(valor_aceito==false) #Enquanto o valor n�o for v�lido, o programa exibira um erro e ira pedir uma nova entrada
  if (n>0) 
    valor_aceito=true;
  else
    n=input("Valor de divis�es inv�lido, digite um valor positivo inteiro: ");
  endif
endwhile

#Calculo do h e tabelamento x,y
h = (b-a)/n;
vx = a:h:b;
vy=f(vx);

#Calculo da integral
if (n==1) #Caso s� haja uma divisaoo o calculo sera este
  Aq=h*vy(2);
else #Para mais de uma divisao sera este
  #Esse aux1 que soma a partir do 2 valor at� n � o que define como uma soma direita
  aux1 = sum(vy(2:1:n));
  Aq = h*aux1;
endif
Aq
printf("Erro absoluto: ");
erro = Aq-7.5
printf("Erro relativo: ");
rel=erro/7.5*100