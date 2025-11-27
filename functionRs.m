function [Rs]= functionRs(P,T,gammag,API,Pb) 
% Rs [scf/STB]
% P [psi], T [R]
if P<Pb
    LGP= log10(P);
    x= (2.8869)-(((14.1811)-(3.3093.*LGP))^0.5);
    Pbx= 10^x;
    Rs= gammag*(((API^0.989)/((T-460)^0.172))*Pbx)^1.2255;
end
if P>=Pb
    LGP= log10(Pb);
    x= (2.8869)-(((14.1811)-(3.3093.*LGP))^0.5);
    Pbx= 10^x;
    Rs= gammag.*(((API.^0.989)/((T-460)^0.172))*Pbx)^1.2255;
end