function [deltap] = Rammey(P,longitud_vector_t)
    
    for i=1:longitud_vector_t
        if i==1
            deltap=0;
        else 
            deltap(i,1)=P(1,1)-P(i,1);
        end
    end
    
    
end