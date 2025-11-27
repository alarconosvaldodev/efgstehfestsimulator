function f=Solucion_barrera_no_flujo(s,S,Cd,Red)

a=sqrt(s);
alfa=besselk(1,a*Red)/besseli(1,a*Red);
f = 1/(s)*(alfa*besseli(0,a)+besselk(0,a)-S*s*(alfa*besseli(1,a)+besselk(1,a)))/...
    (Cd*(a*besselk(0,a)+alfa*besseli(0,a)+besselk(1,a)*(1-S*s)-alfa*besseli(1,a)*(1+S*s)));
end