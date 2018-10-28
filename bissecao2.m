function [raiz,iter] = bissecao2(a,b,erro)
% A função f(x) a ser analisada é definida por anonymous function
% Entrada: limite inferior do intervalo --> a
%          limite superior do intervalo --> b
%          precisão da estimativa em % --> erro
% Saída: raiz da função --> raiz
%        qtidade de iterações --> iter
F=input('Digite a função:');
fa=F(a);
fb=F(b);

iter = 0;   % contador da iteração
cp = 1e5;  % valor inicial do critério de parada
if fa*fb > 0
    disp(['Não há raízes no intervalo [',num2str(a),',',num2str(b),'].']);
    raiz='inexistente';
else
    c = (a+b)/2;    % cálculo do valor médio
    while cp > erro 
        iter=iter+1;
        cvelho = c;   % cold = valor do c da iteração anterior
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