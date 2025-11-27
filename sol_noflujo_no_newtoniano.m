function f=sol_noflujo_no_newtoniano(s,S,Cd,Red,v,beta)
s=10;
v=100;
Red=1;
beta=1;
Cd=10;
S=10;
a=sqrt(s);
b=a*beta;
c=beta*a*Red^(1/beta);
f = 1/s*((besselk(v,b)*besseli(beta,c)-besseli(v,b)*besselk(v,c))+...
    s*a*(besseli(beta,a)*besselk(v,c)+besselk(beta,b)*besseli(v,c)))/...
    (a*(besseli(beta,b)*besselk(v,c)+besselk(beta,b)*besseli(v,c))+...
    s*Cd*((besselk(v,b)*besseli(v,c)-besseli(v,b)*besselk(v,c))+...
    S*a*(besseli(beta,b)*besselk(v,c)+ besselk(beta,b)*besseli(v,c))));
end



