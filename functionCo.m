function [Co]=functionCo(P,T,gammag,API,Pb)
% Co [psi^-1]
% P [psi], T [R], Pb [psi]
Rsb=functionRs(Pb,T,gammag,API,Pb);
if (P>=Pb)
    Co=((-1433)+(5*Rsb)+(17.2*T)+(-1180*gammag)+(12.61*API))/((10^5)*P);
end
if (P<Pb)
    A =(-7.633)-(1.497*log(P))+(1.115*log(T))+(0.533*log(API))+(0.184*log(Rsb));
    Co=exp(A);
end
end