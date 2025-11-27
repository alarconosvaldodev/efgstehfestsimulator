function [rhog] = functionrhog(P,T,gammag)
% rhog [lbm/ft^3]
% P [psi], T [R]
Z = functionZ(P,T,gammag);
R = 10.73;
MWg = 28.96*gammag; 
rhog = (P*MWg/(R*T*Z));
end