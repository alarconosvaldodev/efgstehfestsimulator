function [Bg] = functionBg(P,T,gammag)
% Bg [RB/scf]
% P [psi], T [R]
Z= functionZ(P,T,gammag);
Bg= (14.7/(520*5.615))*((Z*T)/P);
end