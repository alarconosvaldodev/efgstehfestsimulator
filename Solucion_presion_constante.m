function f=Solucion_presion_constante(s,S,Cd,Red)

a=sqrt(s);
alfa=besselk(0,a*Red)/besseli(0,a*Red);

f = 1/(s)*(besselk(0,a)-alfa*besseli(0,a)+S*(alfa*besseli(1,a)+besselk(1,a)))/...
    (Cd*(a*besselk(0,a)-alfa*a*besseli(0,a)+besselk(1,a)*(1+S*s)+alfa*besseli(1,a)*(1+S*s)));

end