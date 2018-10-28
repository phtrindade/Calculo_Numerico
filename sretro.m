function [x,r]=sretro(Tsup)
% Rotina para calcular a solução de sistemas triagulares superiores
% Entrada: Tsup = matriz triangular superior aumentada
% Saída: x = vetor solução
%        r = vetor resíduo

[nl,nc]=size(Tsup);% size identifica tamanha da matriz ;nl numero de linhas; numero de colunas identifica qualquer tamanho de matriz
n=nl;

A = Tsup(:,1:n); %:pega todas as linha da coluna da coluna 1 a coluna 'n' 
b = Tsup(:,nc);  % ; todas as colunas  de 1 a nc 

x=zeros(n,1); %cria vetor tamanho n com zeros
x(n)=b(n)/A(n,n);% b3/a(3,3) ->7calcula a primeira incognata da linha inferior

for i=n-1:-1:1 % n-1 pq ja encontrou uma icognita
    soma=0;
    for j=i+1:n
        soma=soma+A(i,j)*x(j); %soma incognitas descobertas e passa p/ outro lado da igualdade
    end
    x(i)=(b(i)-soma)/A(i,i);
end

r=b-A*x;

