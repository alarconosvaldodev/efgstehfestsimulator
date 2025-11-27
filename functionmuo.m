function [muo] = functionmuo(P,T,gammag,API,Pb)
% muo [cp]
% P [psi], T [R], Pb [psi]
Z = 3.0324-(0.02023*API);
Y = 10^Z;
X = Y*((T-460)^-1.163);
muod = (10^X)-1;
if P<Pb
    Rs= functionRs(P,T,gammag,API,Pb);
    c=(8.62*(10^-5))*Rs;
    d=(1.1*0.001)*Rs;
    e=(3.74*0.001)*Rs;
    a=Rs*((2.2*(10^-7)*Rs)-(7.4*(10^-4)));
    b=(0.68/(10^c))+(0.25/(10^d))+(0.062/(10^e));
    muob=(10^a)*(muod^b);
end
if P>=Pb
    Rs= functionRs(Pb,T,gammag,API,Pb);
    c=(8.62*(10^-5))*Rs;
    d=(1.1*0.001)*Rs;
    e=(3.74*0.001)*Rs;
    a=Rs*((2.2*(10^-7)*Rs)-(7.4*(10^-4)));
    b=(0.68/(10^c))+(0.25/(10^d))+(0.062/(10^e));
    muob=(10^a)*(muod^b);
end
aa= ((-3.9)*(10^-5)*(P))-5;
m= (2.6)*(P^1.187)*(10^aa);
muo= muob*((P/Pb)^m);
end
%%
%Rs = functionRs(P,T,gammag,API,Pb);
%a = 10.715*((Rs+100)^-0.515);
%b = 5.44*((Rs+150)^-0.338);
%muob = a*(muod^b);