%Integrantes:
%Cristian Reinales, Nicolas Botero, Daniel Zarate, Giancarlo Gonzalez,
%Miguel Caicedo
%Implementacion de Seccion Aurea

%Paso 0
iter = 0;
x1 = -3;
x2 = -1;
x3 = 5;
intervalo = [x1,x2,x3];  % intervalo inicial


%(2 * exp(-x)) + (2 * x^2)

l = 0.2;             % epsilon 
 
f1 = f(intervalo(1));  % f(x1)
f2 = f(intervalo(2));  % f(x2)
f3 = f(intervalo(3));  % f(x3)

a23 = intervalo(2) - intervalo(3);
a31 = intervalo(3) - intervalo(1);
a12 = intervalo(1) - intervalo(2);

b23 = intervalo(2) - intervalo(3);
b31 = intervalo(3) - intervalo(1);
b12 = intervalo(1) - intervalo(2);

xg = (b23 * f1) + (b31 * f2) + (b12 * f3); % x_gorro
xg = xg / (2 * ((a23 * f1) + (a31 * f2) + (a12 * f3)));

%Paso 1
while true
intervalo
disp("==========================")
f1 = f(intervalo(1));  % f(x1)
f2 = f(intervalo(2));  % f(x2)
f3 = f(intervalo(3));  % f(x3)

a23 = intervalo(2) - intervalo(3);
a31 = intervalo(3) - intervalo(1);
a12 = intervalo(1) - intervalo(2);

b23 = intervalo(2) - intervalo(3);
b31 = intervalo(3) - intervalo(1);
b12 = intervalo(1) - intervalo(2);

fxg = f(xg);    % f(x_gorro)

iter = iter + 1;

if abs(intervalo(3)- intervalo(1)) < l
    break
else
    if xg > intervalo(2)
        disp("Paso 2")
        %Paso 2
        if fxg > f2
            intervalo = [x1,x2,xg];

        else
            intervalo = [x2,xg,x3];
        end
     elseif xg < intervalo(2)
        disp("Paso 3")
        % Paso 3
        if fxg > f2
            intervalo=[xg,x2,x3];

        else
            intervalo = [x1,xg,x2];
        end
     elseif xg == intervalo(2)
        disp("Paso 4")
        % Paso 4
        disp("=============================")
        if x2 - x1 < x3 - x2
            xg = intervalo(2) + (l / 2);
    
        elseif x2 - x1 > x3 - x2
            xg = intervalo(2) - (l / 2);
        end
    else
        break
    end
end

disp("Iteracion numero: ")
disp(iter)
disp("Los valores de las variables son: ")
intervalo

end

function y = f(x)
    y = (2 * exp(-x)) + (2 * x^2);
end
