% algoritmo de Laplace

function []=laplace()

n = input('Entre com o numero de ptos internos: ');
tol = input('Entre com a tolerancia: ');
nmi = input('Entre com o numero maximo de iteracoes: ');

disp('');
disp('Leitura dos indices dos pontos vizinhos. Caso seja de contorno, ');
disp('atribuir indice 0 ao mesmo e ler o valor de contorno.');
disp('');

for i=1:n
	t(i)=0;
	for j=1:4
		disp(['Ponto: ',num2str(i),' Vizinho: ',num2str(j)]);
		v(i,j)=input('Entre com o indice do vizinho: ');
		if v(i,j) == 0
			ti = input('Entre com o valor de contorno: ');
			t(i)=t(i)+ti;
		end
	end
	u(i) = 0;
end
d = 1;k = 0;
while d>0 && k<=nmi
	d = 0;
	for i=1:n
		uv=u(i);
		u(i)=t(i);
		for j=1:4
			if v(i,j)~= 0 
				u(i)=u(i)+u(v(i,j));
			end
		end
		u(i)=u(i)/4;
		if abs(uv - u(i))>tol
			d = 1;
		end
	end
	k = k + 1;
end
if k>nmi
	disp('Ultrapassou NMI!');
else
	disp(u);
end

end
