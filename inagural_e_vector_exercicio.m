% exercicio vetor - aula inaugural -(e)
clear; clc;
vet= input (' Digite um vetor: ');
n= length(vet); % o comando length fornece a quantidade de elementos de um vetor
for i=1:2:n
    disp(vet(i));
end
