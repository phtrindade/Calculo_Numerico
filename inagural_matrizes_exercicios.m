clear; clc;
mat = input('Digite uma matriz 2x3: ');
%Comando para analisar a dimensões da matriz
[nL,nc]=size (mat); %O comando size fornece as dimensões da matriz
while nL ~= 2 || nc ~= 3
   disp ('Dimensões erradas.');
   mat= input ('Digite uma matriz 2x3 ');
   [nL,nc]=size(mat);
end
cubo_mat=mat.^3;
disp(mat);
disp(cubo_mat);
