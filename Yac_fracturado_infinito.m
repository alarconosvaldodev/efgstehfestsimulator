function f=Yac_fracturado_infinito(s,S,Cd,Red,w,l)
    
Fun_f=(w*(1-w)*s+l)/((1-w)*s+l);
a=sqrt(s*Fun_f);
f = 1/s*((besselk(0,a)+S*a*besselk(1,a))/(Fun_f*(a*besselk(1,a)+s*Fun_f*Cd*(besselk(0,a)+S*a*besselk(1,a)))));
end
