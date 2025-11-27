function [ PSEUDO ] = MP(GAMMAG,Pobj,TEMP,n)
%hallamos la pseudopresion a partir de Z y densidad del gas a un dp
Patm=14.7;
n = 2*n;
DP=(Pobj-Patm)/n;%lpc

Zg_atm= functionZ(Patm,TEMP,GAMMAG);
Ug_atm=functionmug(Patm,TEMP,GAMMAG);
Zg_obj= functionZ(Pobj,TEMP,GAMMAG);
Ug_obj=functionmug(Pobj,TEMP,GAMMAG);
% vector_Zg = PVT_gas(1);
% vector_Ug = PVT_gas(4);
PUZ= 2*Patm/(Ug_atm*Zg_atm);
PUZobj= 2*Pobj/(Ug_obj*Zg_obj);
%SUMATORIA
suma=PUZ + PUZobj;
Presion = Patm + DP;
Presion2 = Patm;
for i=1:n-1
    Zi= functionZ(Presion,TEMP,GAMMAG);
    Ugi=functionmug(Presion,TEMP,GAMMAG);
    suma= suma + 2*( 2*Presion / (Ugi*Zi) );
    Zi= functionZ((Presion+Presion2)*0.5,TEMP,GAMMAG);
    Ugi=functionmug((Presion+Presion2)*0.5,TEMP,GAMMAG);
    suma = suma + 2*4*(Presion+Presion2)*0.5/(Ugi*Zi);
    Presion2 = Presion;
    Presion = Presion + DP;
end
Zi= functionZ((Presion+Presion2)*0.5,TEMP,GAMMAG);
Ugi=functionmug((Presion+Presion2)*0.5,TEMP,GAMMAG);
suma = suma + 2*4*(Presion+Presion2)*0.5/(Ugi*Zi);
suma = suma*DP/6;
PSEUDO = suma;
end