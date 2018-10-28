% Método de resolução de equações diferenciais ordinárias
% Método de Euler
%
%	f1 - EDO (equação diferencial a ser resolvida numericamente)
%   f2 - solução analítica para a EDO (quando houver)
% 
%  Dados de entrada: a - limite inferior do intervalo
%   				 b - limite superior do intervalo
%                    h - tamanho do passo
%                    y0 - solução inicial
function [XY] = euler_sem_SA(a,b,h,y0)
    f1=input('Digite a EDO: '); % entrar a função com anonymous function = @(x,y)
    %f2=input('Digite a solução analítica: ');   % retirar esta linha caso
    % não conheça a solução analítica
	m = (b - a)/h;
	X(1) = a;
	Y(1) = y0;
 	%exato(1) = f2(X(1),Y(1));        % retirar essa linha caso não conheça
% 	a solução analítica
	for i = 1:m
		Y(i+1) = Y(i) + h*f1(X(i),Y(i));
		X(i+1) = X(i) + h;
 		%exato(i+1)=f2(X(i+1),Y(i+1));		% retirar essa linha caso não conheça a solução analítica
 		%erro(i+1)=abs(Y(i+1)-exato(i+1));	% retirar essa linha caso não conheça a solução analítica
    end
    XY = [X' Y'];    % quando nao conhecemos a solução exata
 	%XY = [X; Y; exato; erro]';			% caso não conheça a sol. analiítica subst. essa linha por XY = [X  Y]
     plot(X,Y,'k.:');
     hold on;
     %plot(X,exato);
