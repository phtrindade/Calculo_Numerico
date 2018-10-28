function [I]=um_terco_simpson() % no minimo dois intervalos, quando tiver maiores que 2 intervalos devem ser pares

resp=input('Possui dados tabelados (S/N)?','s');

if strcmpi(resp,'S')     
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
    if rem(vc,2)==0 % identificando se 'vc' � par
    soma = soma + 4*y(vc); 
    else
     soma = soma + 2*y(vc); 
    end
end
disp(soma); 
I = h/3*soma;
end