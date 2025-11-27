function [mug] = functionmug(P,T,gammag)
% mug [cp]
% P [psi], T [R]
R= 10.73;
MWg = 28.96*gammag;
Z=functionZ(P,T,gammag);
rhog = functionrhog(P,T,gammag); % rhog [lXm/ft^3]
K = ((9.4+(0.02*MWg))*(T^1.5))/(209+(19*MWg)+T);
X = 3.5+(986/T)+(0.01*MWg);
Y = (2.4)-(0.2*X);
mug = (K*10^-4)*(exp(X*((rhog/62.4)^Y)));
end