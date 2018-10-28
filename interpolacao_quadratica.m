function [ p2 ] = interpolacao_quadratica( x ) %x é o valor a ser encontrado apos a formulçao da função

% valores da tabela para a formulação da função
x0= input('Digite  o ponto x0: ');
y0= input('Digite  o ponto y0: ');
x1= input('Digite  o ponto x1: ');
y1= input('Digite  o ponto y1: ');
x2= input('Digite  o ponto x2: ');
y2= input('Digite  o ponto y2: ');

% so funciona se já satifaz a condição de interpolação quadratica 
if x>x0 && x<x2 
    % Matriz aumentada
     Ab= [ 1 x0 (x0)^2 y0; 1 x1 (x1)^2 y1;1 x2 (x2)^2 y2];
     % chamando triangulação e gauss, e entregando o resultado pronto
     [a,r] = gauss_and_juntos_triangulo(Ab)
     % função resultante da interpolação 
     p2 = a(1)+a(2)*x+(a(3)*x^2);
else
    p2=' Não é um caso de interpolação quadratica';
end
end

