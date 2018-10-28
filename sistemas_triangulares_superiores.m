function [x,r] = sistemas_triangulares_superiores (Tsup)

%Rotina para calcular a solução de sistemas triangulares superiores 
%Entrada: Tsup= matriz triangular superior aumentada
%Saida: x - vetor solução
%       r - vetor residuo
[nl,nc]=size(Tsup);
n=nl;

A = Tsup (:,1:n); % Separando as matrizes, pegando todas as linhas e da coluna 1 ate n
b = Tsup (:,nc); % separando as matrizes, pegando todas as linhas da ultima coluna (nc)

x= zeros(n,1); % adicionando zeros a uma matriz de uma coluna com (n) linhas
x(n) = b(n)/ A(n,n); % resolvendo a variavel da ultima linha e coluna da matriaz aumentada

for i=n-1:-1:1  
    soma=0;
    for j=i+1:n
        soma=soma+A(i,j)*x(j);
    end
    x(i)=(b(i)-soma)/A(i,i);
end

r=b-A*x;