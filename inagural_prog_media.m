%Programa principal da sub-rotina media
clear; clc; % para não retorna erro, colocar somente no script principal
m1= input ('Digite a M1: ');
m2= input ('Digite a M2: ');
m3= input ('Digite a M3: ');
%Chamada da sub-rotina
[resultado] = media(m1,m2,m3);
if resultado >= 5.75
    disp('Aprovado');
else 
    disp('Reprovado');
end
    
