function [ raiz,k, cp] = newton( x0, erro_max,iterm )
% A função f(x) a ser analisada é definida pela função inline
%Entrada: primeira estimativa -->x0
          %quantidade máxima de iteraçôes --> iterm 
          % precisão da estimativa em % --> erro_max
%Saída: raiz da função --> raiz
%quantidade de iterações --> k
%erro cometido --> cp

f= input('Digite a equação não linear: ');
df= input ('Digite a derivada da equação: ');
k=0;
cp=1e+5;
xa=x0;
while  cp>=erro_max && k<iterm 
    fxa=f(xa);
    dfxa=df(xa);
    xn=xa-fxa/dfxa;
    cp = abs((xn-xa)/xn);
    disp ([fxa, dfxa,xn,cp]);
    xa=xn;
    k=k+1;
end
if cp<erro_max 
raiz = xn;
else
    raiz= 'Não coverge';
end