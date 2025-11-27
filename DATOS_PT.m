
function [Matriz] = DATOS_PT(PBU,DD)

if DD==0
 if PBU==1
    Matriz = importdata('Datos_PBU1.txt');
 end
 if PBU==2
    Matriz = importdata('Datos_PBU2.txt');    
 end
 if PBU==3
    Matriz = importdata('Datos_PBU3.txt');
 end
 if PBU==4
    Matriz = importdata('Datos_PBU4.txt');
 end
 if PBU==5
    Matriz = importdata('Datos_PBU_GAS1.txt');
 end
end
if PBU == 0 
 if DD==1
    Matriz = importdata('Datos_DD1.txt');
  
 end
 if DD==2
    Matriz = importdata('Datos_DD2.txt');

 end
 if DD==3
    Matriz = importdata('Datos_DD3.txt');

 end
end
