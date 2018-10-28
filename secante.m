function [ x,k ] = secante( x0,x1,f,tol,kmax )
%Programa le primeiro valor de chute inicial (x0), segundo(x1),
%a funcao(f),tolerancia e numero maximo de iteracoes
%programa devolve valor de x e numero de iteracoes definidas
    k = 0;
    erro = inf;
    while (erro > tol) && (k < kmax)
        %Aqui o programa calcula x com base na equacao do metodo das
        %secantes
        x = ((x0*f(x1))-(x1*f(x0)))/(f(x1)-f(x0));
        erro = (abs(x-x1))/abs(x);
        %calculo do erro
        x0 = x1;
        x1 = x;
        %as duas passagens acima sao para trocar os valores de x0 e x1,
        %caso o erro ainda seja maior que a tolerancia
        k = k + 1;
    end   
end

