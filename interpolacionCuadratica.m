%Integrantes:
%Cristian Reinales, Nicolas Botero, Daniel Zarate, Giancarlo Gonzalez,
%Miguel Caicedo
%Implementacion de Seccion Aurea

%paso 0
iter = 0;
x1 = -3;
x2 = -1;
x3 = 5;
int_i = [x1,x2,x3];  % intervalo inicial

fx_1= x1^2-2*x1;    % f(x1)
fx_2= x2^2-2*x2;    % f(x2)
fx_3= x3^2-2*x3;    % f(x3)



l = 0.2;             % epsilon 
 
%paso 1
while true

xg = (((x2^2-x3^2)*fx_1)+((x3^2-x1^2)*fx_2)+((x1^2-x2^2)*fx_3))/2*(((x2-x3)*fx_1)+((x3-x1)*fx_2)+((x1-x2)*fx_3)); % x gorro
fx_g = xg^2-2*xg;    % f(x_gorro)         

iter=iter+1;
if abs(int_i(1,3)- int_i(1,1)) < l
    break
else
    if xg > x2
        %Paso 2 
        if fx_g >= fx_2
            int_i=[x1,x2,xg];
            
        elseif fx_g <= fx_2 
            int_i = [x2,xg,x3];    
            end
     elseif xg < x2  
        % paso 3
        if fx_g >= fx_2
            int_i=[xg,x2,x3];
            
        elseif fx_g <= fx_2 
            int_i = [x1,xg,x2]; 
            end
     elseif xg == x2
        % paso 4
        if x2-x1 < x3-x2
            x2 + (l/2);
            
        elseif x2-x1 > x3-x2
            x2-(l/2); 
            end
        
    end     
end

disp("Iteracion numero: ")
disp(iter)
disp("Los valores de las variables son: ")
fx_1
fx_2
fx_3

xg
fx_g

int_i
%wait time (5 second);
%break
end


