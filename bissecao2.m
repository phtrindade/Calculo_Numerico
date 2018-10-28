function [raiz,iter] = bissecao2(a,b,erro)
% A fun��o f(x) a ser analisada � definida por anonymous function
% Entrada: limite inferior do intervalo --> a
%          limite superior do intervalo --> b
%          precis�o da estimativa em % --> erro
% Sa�da: raiz da fun��o --> raiz
%        qtidade de itera��es --> iter
F=input('Digite a fun��o:');
fa=F(a);
fb=F(b);

iter = 0;   % contador da itera��o
cp = 1e5;  % valor inicial do crit�rio de parada
if fa*fb > 0
    disp(['N�o h� ra�zes no intervalo [',num2str(a),',',num2str(b),'].']);
    raiz='inexistente';
else
    c = (a+b)/2;    % c�lculo do valor m�dio
    while cp > erro 
        iter=iter+1;
        cvelho = c;   % cold = valor do c da itera��o anterior
        fc=F(c);
        disp([a,b,c,fa,fb,fc]);        
        if fc*fa < 0
            b = c;
            fb=F(b);
        else
            if fc*fb < 0
                a = c;
                fa=F(a);
            else
                raiz = c;
            end
        end
        c = (a+b)/2;
        cp = abs((c - cvelho)/c)*100;
        disp(['Erro =',num2str(cp)]);
    end
    raiz = c;      
end