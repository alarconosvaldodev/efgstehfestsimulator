%Función curva de la derivada de bourdet
%Parámetros: -
function [ deltapepp ] = curva_de_la_derivada_DD(vector_presion,vector_t,longitud_vector_t)
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
        deltapep(i,1) = deltape(i,1)/(vector_t(i,1)-vector_t(i-1,1));
    end
end
for i=1:longitud_vector_t   
    if i==1
        deltapeps(i,1) =0;  
    else
        deltapeps(i,1) = (deltapep(i-1,1)+deltapep(i,1))/2;
    end
end
for i=1:longitud_vector_t  
     if i==1
        deltap(i,1) =0;  
     else
        deltap(i,1) = deltapeps(i,1)*vector_t(i,1);
     end
end
deltapepp=zeros(longitud_vector_t-1,1);
for i=1:longitud_vector_t-1
    deltapepp(i,1) = deltap(i+1,1);
end