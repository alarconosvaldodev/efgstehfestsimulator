%Función curva de la derivada de bourdet
%Parámetros: -
function [ deltapepp ] = curva_de_la_derivada_PBU(vector_presion,vector_t,longitud_vector_t,tp)
for i=1:longitud_vector_t    
    deltate(i,1) = vector_t(i,1)*tp/(vector_t(i,1)+tp);
end
for i=1:longitud_vector_t
    if i==1
        deltape(i,1) =0;  
    else
        deltape(i,1) = vector_presion(i,1)-vector_presion(i-1,1);
    end
end
for i=1:longitud_vector_t   
    if i==1
        deltapep(i,1) =0;  
    else
        deltapep(i,1) = deltape(i,1)*deltate(i,1)/(deltate(i,1)-deltate(i-1,1));
    end
end
for i=1:longitud_vector_t   
    if i==1
        deltapeps(i,1) =0;
    end  
    if i==2
        deltapeps(i,1) = (deltapep(i,1)+deltapep(i+1,1)+deltapep(i+2,1)+deltapep(i+3,1)+deltapep(i+4,1))/5;
    end
    if i==3
        deltapeps(i,1) = (deltapep(i-1,1)+deltapep(i,1)+deltapep(i+1,1)+deltapep(i+2,1)+deltapep(i+3,1)+deltapep(i+4,1)+deltapep(i+5,1))/7;
    end
    if i==4
        deltapeps(i,1) = (deltapep(i-2,1)+deltapep(i-1,1)+deltapep(i,1)+deltapep(i+1,1)+deltapep(i+2,1)+deltapep(i+3,1)+deltapep(i+4,1)+deltapep(i+5,1))/8;
    end 
    if i==5
        deltapeps(i,1) = (deltapep(i-3,1)+deltapep(i-2,1)+deltapep(i-1,1)+deltapep(i,1)+deltapep(i+1,1)+deltapep(i+2,1)+deltapep(i+3,1)+deltapep(i+4,1)+deltapep(i+5,1))/9;
    end
    if i >= 6 & i <= longitud_vector_t-5
        deltapeps(i,1) = (deltapep(i-4,1)+deltapep(i-3,1)+deltapep(i-2,1)+deltapep(i-1,1)+deltapep(i,1)+deltapep(i+1,1)+deltapep(i+2,1)+deltapep(i+3,1)+deltapep(i+4,1)+deltapep(i+5,1))/10;
    end
    if i==longitud_vector_t-4
        deltapeps(i,1) = (deltapep(i-4,1)+deltapep(i-3,1)+deltapep(i-2,1)+deltapep(i-1,1)+deltapep(i,1)+deltapep(i+1,1)+deltapep(i+2,1)+deltapep(i+3,1)+deltapep(i+4,1))/9;
    end
    if i==longitud_vector_t-3
        deltapeps(i,1) = (deltapep(i-4,1)+deltapep(i-3,1)+deltapep(i-2,1)+deltapep(i-1,1)+deltapep(i,1)+deltapep(i+1,1)+deltapep(i+2,1)+deltapep(i+3,1))/8;
    end
    if i==longitud_vector_t-2
        deltapeps(i,1) = (deltapep(i-4,1)+deltapep(i-3,1)+deltapep(i-2,1)+deltapep(i-1,1)+deltapep(i,1)+deltapep(i+1,1)+deltapep(i+2,1))/7;
    end
    if i==longitud_vector_t-1
        deltapeps(i,1) = (deltapep(i-4,1)+deltapep(i-3,1)+deltapep(i-2,1)+deltapep(i-1,1)+deltapep(i,1)+deltapep(i+1,1))/6;
    end
    if i==longitud_vector_t
        deltapeps(i,1) = (deltapep(i-4,1)+deltapep(i-3,1)+deltapep(i-2,1)+deltapep(i-1,1)+deltapep(i,1))/5;
    end
end
deltapepp=zeros(longitud_vector_t-1,1);
for i=1:longitud_vector_t-1
    deltapepp(i,1) = deltapeps(i+1,1);

end