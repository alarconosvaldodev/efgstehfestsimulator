function f=sol_inf_no_newtoniano(s,S,Cd,Red,v,beta)

a=sqrt(s);
f = 1/s*((besselk(v,a*beta)+S*a*besselk(beta,a*beta))/(a*besselk(beta,a*beta)+s*Cd*(besselk(v,a*beta)+S*a*besselk(beta,a*beta))));
end

