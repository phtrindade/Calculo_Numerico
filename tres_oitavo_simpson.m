function [I]=tres_oitavo_simpson() % no minimo tres intervalos, quando maior que tres intervalos, devem ser diviveis de 3.

resp=input('Possui dados tabelados (S/N)?','s');

if resp == 'S'     
    tab = input('Entre com a tabela de dados:');     
    x = tab(:,1);     
    y = tab(:,2);     
    n = length(x);  % quantidades de pontos    
    h = (x(n)-x(1))/(n-1); 
else
     a = input('Digite o limite inferior da integração:');    
     b = input('Digite o limite superior da integração:');     
     nint = input('Digite o número de intervalos:');     
     finteg=input('Digite a função a ser integrada:');     % entre a função utilizando a anonymous function '@(x)' ou seja, @(x) função 
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
for vc = 2:3:n-2
    soma = soma + 3*y(vc);    
end
for vc = 3:3:n-1
    soma = soma + 3*y(vc);    
end
for vc = 4:3:n-3
    soma = soma + 2*y(vc);    
end
%disp(soma); 
I = h*(3/8)*soma;
end