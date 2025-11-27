function [Z]=functionZ(P,T,gamma)
% Z [dimensionless]
% P [psi], T [R]
Ppc = (756.8)-(131*gamma)-((3.6)*(gamma^2));
Tpc = (169.2)+(349.5*gamma)-((74)*(gamma^2));
Tpr = T/Tpc;
Ppr = P/Ppc;
if((Ppr>=0.2)&&(Ppr<=5.4))&&((Tpr>=1.05)&&(Tpr<=3.0))
    if (Ppr>=0.2)&&(Ppr<=1.2)
        if (Tpr>=1.05)&&(Tpr<=1.2)
            A=1.6643; B=-2.2114; C=-0.3647; D=1.4385;
        end
        if (Tpr>1.2)&&(Tpr<=1.4)
            A=0.5222; B=-0.8511; C=-0.0364; D=1.0490;
        end
        if (Tpr>1.4)&&(Tpr<=2.0)
            A=0.1391; B=-0.2988; C=0.0007; D=0.9969;
        end
        if (Tpr>2.0)&&(Tpr<=3.0)
            A=0.0295; B=-0.0825; C=0.0009; D=0.9967;
        end
    end
    if (Ppr>1.2)&&(Ppr<=2.8)
        if (Tpr>=1.05)&&(Tpr<=1.2)
            A=-1.3570; B=1.4942; C=4.6315; D=-4.7009;
        end
        if (Tpr>1.2)&&(Tpr<=1.4)
            A=0.1717; B=-0.3232; C=0.5869; D=0.1229;
        end
        if (Tpr>1.4)&&(Tpr<=2.0)
            A=0.0984; B=-0.2053; C=0.06217; D=0.8580;
        end
        if (Tpr>2.0)&&(Tpr<=3.0)
            A=0.0211; B=-0.0527; C=0.0127; D=0.9549;
        end
    end
    if (Ppr>2.8)&&(Ppr<=5.4)
        if (Tpr>=1.05)&&(Tpr<=1.2)
            A=-0.3278; B=0.4752; C=1.8223; D=-1.9036;
        end
        if (Tpr>1.2)&&(Tpr<=1.4)
            A=-0.2521; B=0.3871; C=1.6087; D=-1.6635;
        end
        if (Tpr>1.4)&&(Tpr<=2.0)
            A=-0.0284; B=0.0625; C=0.4714; D=-0.0011;
        end
        if (Tpr>2.0)&&(Tpr<=3.0)
            A=0.0041; B=0.0039; C=0.0607; D=0.7927;
        end
    end
    Z= (Ppr*((A*Tpr)+(B)))+(C*Tpr)+(D);
end
if (Ppr>5.4)&&(Ppr<=15.0)
    Z=(Ppr*(0.711+3.66*Tpr)^-1.4667)-(1.637/(0.319*Tpr+0.522))+2.071;
end
if (Ppr<0.2)&&((Tpr>=1.05)&&(Tpr<=3.0))
    if (Tpr>=1.05)&&(Tpr<=1.2)
        A=1.6643; B=-2.2114; C=-0.3647; D=1.4385;
    end
    if (Tpr>1.2)&&(Tpr<=1.4)
        A=0.5222; B=-0.8511; C=-0.0364; D=1.0490;
    end
    if (Tpr>1.4)&&(Tpr<=2.0)
        A=0.1391; B=-0.2988; C=0.0007; D=0.9969;
    end
    if (Tpr>2.0)&&(Tpr<=3.0)
        A=0.0295; B=-0.0825; C=0.0009; D=0.9967;
    end
    %disp('Como P es pequeña se puede asumir Z como 1');
    Z= (Ppr*((A*Tpr)+(B)))+(C*Tpr)+(D);
end
if ((Ppr<0.2)||(Ppr>15.0))||(Tpr<1.05)||(Tpr>3.0)
    Z=1;
end  
end