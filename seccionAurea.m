%Integrantes:
%Cristian Reinales, Nicolas Botero, Daniel Zarate, Giancarlo Gonzalez
%Implementacion de Seccion Aurea

%paso 0
iter = 0;
ak = -3;
bk = 5;
alph = 0.618;

uk = ak + alph * (bk - ak)
lk = ak + (1 - alph) * (bk - ak)
l = 0,001;
 
%paso 1
while true
iter=iter+1;
if(bk - ak) < l
    break
else
    if(lk^2 - 2*lk) > (uk^2 - 2*uk)
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
wait time (5 second);
break
end


end