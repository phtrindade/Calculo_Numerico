function [p1]=interp_1(x0,y0,x1,y1,x)
% Fun��o para interpola��o linear
% x = valor a ser interpolado
if x>x0 && x<x1
    p1 = y0+((y1-y0)/(x1-x0))*(x-x0);
else
    p1 = 'N�o � um caso de interpola��o!';
end
