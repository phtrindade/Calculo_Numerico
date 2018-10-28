function [ p2 ] = interpolacao_quadratica( x ) %x � o valor a ser encontrado apos a formul�ao da fun��o

% valores da tabela para a formula��o da fun��o
x0= input('Digite  o ponto x0: ');
y0= input('Digite  o ponto y0: ');
x1= input('Digite  o ponto x1: ');
y1= input('Digite  o ponto y1: ');
x2= input('Digite  o ponto x2: ');
y2= input('Digite  o ponto y2: ');

% so funciona se j� satifaz a condi��o de interpola��o quadratica 
if x>x0 && x<x2 
    % Matriz aumentada
     Ab= [ 1 x0 (x0)^2 y0; 1 x1 (x1)^2 y1;1 x2 (x2)^2 y2];
     % chamando triangula��o e gauss, e entregando o resultado pronto
     [a,r] = gauss_and_juntos_triangulo(Ab)
     % fun��o resultante da interpola��o 
     p2 = a(1)+a(2)*x+(a(3)*x^2);
else
    p2=' N�o � um caso de interpola��o quadratica';
end
end

