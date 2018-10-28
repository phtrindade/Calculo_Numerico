% M�todo de resolu��o de equa��es diferenciais ordin�rias
% M�todo de Euler
%
%	f1 - EDO (equa��o diferencial a ser resolvida numericamente)
%   f2 - solu��o anal�tica para a EDO (quando houver)
% 
%  Dados de entrada: a - limite inferior do intervalo
%   				 b - limite superior do intervalo
%                    h - tamanho do passo
%                    y0 - solu��o inicial
function [XY] = euler_sem_SA(a,b,h,y0)
    f1=input('Digite a EDO: '); % entrar a fun��o com anonymous function = @(x,y)
    %f2=input('Digite a solu��o anal�tica: ');   % retirar esta linha caso
    % n�o conhe�a a solu��o anal�tica
	m = (b - a)/h;
	X(1) = a;
	Y(1) = y0;
 	%exato(1) = f2(X(1),Y(1));        % retirar essa linha caso n�o conhe�a
% 	a solu��o anal�tica
	for i = 1:m
		Y(i+1) = Y(i) + h*f1(X(i),Y(i));
		X(i+1) = X(i) + h;
 		%exato(i+1)=f2(X(i+1),Y(i+1));		% retirar essa linha caso n�o conhe�a a solu��o anal�tica
 		%erro(i+1)=abs(Y(i+1)-exato(i+1));	% retirar essa linha caso n�o conhe�a a solu��o anal�tica
    end
    XY = [X' Y'];    % quando nao conhecemos a solu��o exata
 	%XY = [X; Y; exato; erro]';			% caso n�o conhe�a a sol. anali�tica subst. essa linha por XY = [X  Y]
     plot(X,Y,'k.:');
     hold on;
     %plot(X,exato);
