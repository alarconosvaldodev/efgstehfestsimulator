function [Bt]= functionBt(P,T,gammag,API,Pb)
% Bt [RB/STB]
% P [psi], T [R], Pb [psi]
gammao=(141.5/(API+131.5));
Rs= functionRs(P,T,gammag,API,Pb);
Rs=(gammao*0)+Rs;
Bg = functionBg(P,T,gammag);
Bo=functionBo(P,T,gammag,API,Pb);
Rsb= functionRs(Pb,T,gammag,API,Pb);
Bt=Bo+((Rsb-Rs)*Bg);
%%
%Rs= functionRs(P,T,gammag,API,Pb);
%C= (2.9)*(10^(-0.00027*Rs));
%Ax= (((Rs*((T-460)^0.5))*(gammao^C))/(gammag^0.3))*(P^-1.1089);
%Bt= exp(0.080135+(0.47257*log(Ax))+(0.17351*(log(Ax))^2));
end