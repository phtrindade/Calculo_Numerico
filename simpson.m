function [I]=simpson()

resp=input('Possui dados tabelados (S/N)?','s');
if strcmpi(resp,'S')
    tab = input('Entre com a tabela de dados:');
    x = tab(:,1);
    y = tab(:,2);
    n = length(x);
    nint = n-1;
    h = (x(n)-x(1))/nint;
else
    a = input('Digite o limite inferior da integra��o:');
    b = input('Digite o limite superior da integra��o:');
    nint = input('Digite o n�mero de intervalos:');
    % para entrar com fun��o an�nima: @(x)(fun��o)
    finteg = input('Digite a fun��o a ser integrada:');
    h = (b - a)/nint;
    cont = 1;
    for vc = a:h:b
        y(cont) = finteg(vc);
        cont = cont + 1;
    end
    y = y'
    n = nint + 1;
end
soma = y(1)+y(n);
if rem(nint,2)==0
    for vc = 2:2:n-1
        soma = soma + 4*y(vc);
    end
    for vc = 3:2:n-1
        soma = soma + 2*y(vc);
    end
    I = h/3*soma;
else
    I='N�mero de intervalos n�o � par!';
end
