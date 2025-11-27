function f=Solucion_comportamiento_infinito(s,S,Cd,Red)
a=sqrt(s);
f = 1/s*((besselk(0,a)+S*a*besselk(1,a))/(a*besselk(1,a)+s*Cd*(besselk(0,a)+S*a*besselk(1,a))));
end
