clear
clc

f=@(x) (10)./(x.^2); #Definição da função
valor_aceito=false;
#Valores iniciais da integral
a=input("Digite o valor INFERIOR da integração: ");
b=input("Digite o valor SUPERIOR da integração: ");
n=input("Digite a quantidade de divisões que deve ser feito: ");

#Validando a entrada do usuário
while(valor_aceito==false) #Enquanto o valor não for válido, o programa exibira um erro e ira pedir uma nova entrada
  if (n>0) 
    valor_aceito=true;
  else
    n=input("Valor de divisões inválido, digite um valor positivo inteiro: ");
  endif
endwhile

#Calculo do h e tabelamento x,y
h = (b-a)/n;
vx = a:h:b;
vy=f(vx);

#Calculo da integral
if (n==1) #Caso só haja uma divisaoo o calculo sera este
  Aq=h*vy(2);
else #Para mais de uma divisao sera este
  #Esse aux1 que soma a partir do 2 valor até n é o que define como uma soma direita
  aux1 = sum(vy(2:1:n));
  Aq = h*aux1;
endif
Aq
printf("Erro absoluto: ");
erro = Aq-7.5
printf("Erro relativo: ");
rel=erro/7.5*100