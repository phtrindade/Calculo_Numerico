clear; clc;
mat = input('Digite uma matriz 2x3: ');
%Comando para analisar a dimens�es da matriz
[nL,nc]=size (mat); %O comando size fornece as dimens�es da matriz
while nL ~= 2 || nc ~= 3
   disp ('Dimens�es erradas.');
   mat= input ('Digite uma matriz 2x3 ');
   [nL,nc]=size(mat);
end
cubo_mat=mat.^3;
disp(mat);
disp(cubo_mat);
