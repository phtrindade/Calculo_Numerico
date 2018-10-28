function [I]=newton_cotes() % regra do trapezio 

resp=input('Possui dados tabelados (S/N)?','s');

if resp == 'S'     
    tab = input('Entre com a tabela de dados:');     
    x = tab(:,1);     
    y = tab(:,2);     
    n = length(x);  % quantidades de pontos    
    h = (x(n)-x(1))/(n-1); 
else
     a = input('Digite o limite inferior da integra��o:');    
     b = input('Digite o limite superior da integra��o:');     
     nint = input('Digite o n�mero de intervalos:');     
     finteg=input('Digite a fun��o a ser integrada:');     % entre a fun��o utilizando a anonymous function '@(x)' ou seja, @(x) fun��o 
     h = (b - a)/nint;     
     cont = 1; 
       for vc = a:h:b         
           y(cont) = finteg(vc);         
           cont = cont + 1;     
       end
       y = y';     
       x=a:h:b;     
       disp([x',y]);     
       n = nint + 1; 
end
soma = y(1)+y(n); 
for vc = 2:n-1    
    soma = soma + 2*y(vc); 
end
disp(soma); 
I = h/2*soma;
end

