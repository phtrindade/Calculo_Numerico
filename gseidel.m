function [ x,k,r] = gseidel( Ab, erro, iterm, x0)
[nl, nc] = size(Ab);
n=nl;
A= Ab(:,1:n);
b= Ab(:,nc);
x=x0(:); % x0 é pelo numero de variaveis 
k=0;
maior_dif=1.0e5; % igual ao cp

while maior_dif>=erro && k<iterm
k=k+1;
for i=1:n
    soma=0;
    for j=1:n
        if i~=j
            soma=soma+ A(i,j)*x(j);
        end
    end
    v(i)=x(i);
    x(i)= (b(i)-soma)/A(i,i);
end
maior_dif=abs(x(1)-v(1));
    for i=2:n
        aux= abs(x(i)-v(i));
        if aux>maior_dif
            maior_dif=aux;
        end 
    end
end
r=b-A*x;
end

