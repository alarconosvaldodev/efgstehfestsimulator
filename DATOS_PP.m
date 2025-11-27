function [datosyac] = DATOS_PP(PBU,DD)
    

if DD==0
 if PBU==1

    datosyac= importdata('DatosYac_PBU1.txt');
 end
 if PBU==2
    datosyac=importdata('DatosYac_PBU2.txt');
 end
 if PBU==3
    datosyac=importdata('DatosYac_PBU3.txt');
 end
 if PBU==4
    datosyac=importdata('DatosYac_PBU4.txt');
 end
 if PBU==5
    datosyac = importdata('DatosYac_PBU_GAS1.txt');
 end
end
if PBU == 0 
 if DD==1
    datosyac=importdata('DatosYac_DD1.txt');
 end
 if DD==2
    datosyac=importdata('DatosYac_DD2.txt');
 end
 if DD==3
    datosyac=importdata('DatosYac_DD3.txt');
 end
end
