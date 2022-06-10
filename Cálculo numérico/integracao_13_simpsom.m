clear
clc

f=@(x) (10)./(x.^2); #Definição da função
valor_aceito = false; #Variavel de apoio para verificar se a entrada do usuario foi aceita

a=input("Digite o valor INFERIOR da integração: ");
b=input("Digite o valor SUPERIOR da integração: ");
n=input("Digite a quantidade de divisões que deve ser feito: ");

#Verificação se o valor digitado para n é valido
while(valor_aceito==false) #Enquanto o valor não for válido, o programa exibira um erro e ira pedir uma nova entrada
  if (n>0) 
    if (mod(n,2)!=0)
      n=input("Valor de divisões inválido, digite múltiplo positivo de 2: ");
    else
      valor_aceito=true;
    endif
  else
    n=input("Valor de divisões inválido, digite múltiplo positivo de 2: ");
  endif
endwhile

#Calculo do h e tabelamento x,y
h = (b-a)/n
vx = a:h:b
vy=f(vx)

aux1 = sum(vy(2:2:n));
aux2 = sum(vy(3:2:n));
s13s = (1/3*h)*(vy(1)+4*aux1+2*aux2+vy(n+1));
s13s
printf("Erro absoluto: ");
erro = s13s-7.5
printf("Erro relativo: ");
rel=erro/7.5*100