function [ raiz,k, cp] = newton( x0, erro_max,iterm )
% A fun��o f(x) a ser analisada � definida pela fun��o inline
%Entrada: primeira estimativa -->x0
          %quantidade m�xima de itera��es --> iterm 
          % precis�o da estimativa em % --> erro_max
%Sa�da: raiz da fun��o --> raiz
%quantidade de itera��es --> k
%erro cometido --> cp

f= input('Digite a equa��o n�o linear: ');
df= input ('Digite a derivada da equa��o: ');
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
    raiz= 'N�o coverge';
end