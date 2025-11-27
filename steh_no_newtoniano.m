%F es la transformada de Laplace
%t es el argumento de transformación adimensional/tiempo
%Invplace es el valor de la inversa de la transformada de Laplace
%N es el número de coeficientes puede tomar valores de 8, 10, 12, 14, 16...
function Invplace = steh_no_newtoniano(F,t,S,Cd,Red,v,beta)
N=18;
Nn2= N/2;

for j = 1:N
    z = 0.0;
    for k = floor( ( j + 1 ) / 2 ):min(j,Nn2)
        z = z + ((k^Nn2)*factorial(2*k))/ ...
            (factorial(Nn2-k)*factorial(k)*factorial(k-1)* ...
            factorial(j-k)*factorial(2*k - j));
    end
    v(j)=(-1)^(j+Nn2)*z;
end
sum= 0.0;
ln2_t = log(2.0)/ t;
for j = 1:N
    s = j * ln2_t;
    sum = sum + v(j) * feval(F,s,S,Cd,Red,v,beta);
end
Invplace = sum * ln2_t;
end