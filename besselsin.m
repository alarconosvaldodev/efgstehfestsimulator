function f=besselsin(s,S,Cd)
a=sqrt(s);
f=(besselk(0,a)+S*a*besselk(1,a))./(s*a*besselk(1,a)+s*s*Cd*(besselk(0,a)+S*a*besselk(1,a)));
end