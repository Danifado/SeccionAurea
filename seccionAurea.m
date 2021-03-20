%Integrantes:
%Cristian Reinales, Nicolas Botero, Daniel Zarate, Giancarlo Gonzalez
%Miguel Caicedo
%Implementacion de Seccion Aurea

%paso 0
iter = 0;
ak = -3;
bk = 5;
alph = 0.618;


l = 0.2;
 
%paso 1
while true

uk = ak + alph * (bk - ak);
lk = ak + (1 - alph) * (bk - ak);

iter=iter+1;
if(bk - ak) < l
    break
else
    if(f(lk) > f(uk))
        %Paso 2 f(lk) > f (uk)
        ak= lk;
        bk= bk;
        lk= uk;
        uk= ak + alph * (bk - lk);      
    else
        %paso 3
        ak = ak;
        bk = uk;
        uk = lk;
        lk = ak+(1 - alph)*(bk - ak);   
    end
disp("Iteracion numero: ")
disp(iter)
disp("Los valores de las variables son: ")
ak
bk
uk
lk
%wait time (5 second);
%break
end


end

function y = f(x)
    y = (2 * exp(-x)) + (2 * x^2);
end
