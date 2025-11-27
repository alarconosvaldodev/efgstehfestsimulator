function [rhoo] = functionrhoo(P,T,gammag,API,Pb)
% rhoo [lbm/ft^3]
% P [psi], T [R], Pb [psi]
gammao= (141.5/(API+131.5));
if P<=Pb
    Rs= functionRs(P,T,gammag,API,Pb);
    Bo= functionBo(P,T,gammag,API,Pb);
    rhoo= ((62.4*gammao)+(0.01357*Rs*gammag))/Bo;
end
if P>Pb
    Rsb= functionRs(Pb,T,gammag,API,Pb);
    Co=functionCo(P,T,gammag,API,Pb);
    Bo= functionBo(P,T,gammag,API,Pb);
    rhoob= ((62.4*gammao)+(0.01357*Rsb*gammag))/Bo;
    rhoo= rhoob*exp(Co*(P-Pb));
end   
end