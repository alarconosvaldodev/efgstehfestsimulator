function [Bo]=functionBo(P,T,gammag,API,Pb)
% Bo [RB/STB]
% P [psi], T [R], Pb [psi]
gammao= (141.5/(API+131.5));
if P<=Pb
    Rs= functionRs(P,T,gammag,API,Pb);
    Cbob= (Rs*((gammag/gammao)^0.5))+(1.25*(T-460));
    Bo= (0.9759)+((12*10^-5)*Cbob);
end
if P>Pb
    Rsb= functionRs(Pb,T,gammag,API,Pb);
    Co= functionCo(P,T,gammag,API,Pb);
    Cbob= (Rsb*((gammag/gammao)^0.5))+(1.25*(T-460));
    Bob= (0.9759)+((12*10^-5)*Cbob);
    Bo= Bob*exp(Co*(Pb-P));
end
end