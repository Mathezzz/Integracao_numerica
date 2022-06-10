clear
clc

f=@(x) (10)./(x.^2); #Definição da função
valor_aceito=false;
#Valores iniciais da integração
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
h = (b-a)/n
vx = a:h:b
vy=f(vx)

#Calculo da integral
if (n==1) #Caso só haja uma divisaoo o calculo sera este
  Aq=h*vy(1);
else #Para mais de uma divisao sera este
  #Esse aux1 que soma a partir do 1 valor até n-1 é o que define como uma soma esquerda
  aux1 = sum(vy(1:1:n-1));
  Aq = h*aux1;
endif
Aq
printf("Erro absoluto: ");
erro = Aq-7.5
printf("Erro relativo: ");
rel=erro/7.5*100