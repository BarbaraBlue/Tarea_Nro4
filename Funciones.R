#Establecer carpeta 'Tarea_Nro4" como directorio de trabajo
setwd("~/Tarea_Nro4")

#FUNCION A UTILIZAR PARA OBTENER EL DV DE CADA RUT
#dv: int -> int
#Def dv: funcion para generar digito verificador para un rut valido
#Ejemplo: dv(18749743)->4

dv <- function(rut){
  rut = as.character(rut)
  x = as.numeric(rev(strsplit(rut,NULL)[[1]]))
  Multiplo = rep(2:7,length.out=length(x))
  y = sum(x*Multiplo)
  z = 11 - y + floor(y/11)*11
  key = c(1:11)
  val = c(1:9,"k",0)
  dv = val[match(z, key)]
  return(dv)
}


#FUNCION A UTILIZAR PARA CONTAR PALABRAS
#strsplit: string(a,b) -> número de palabras
#def strsplit: función que cuenta palabras, donde a es el contenido y b un separador

Contando_palabras <- strsplit(frase," ")[1]
strsplit(" Cuando plancha Pancha, siempre plancha con más de una plancha, ¿con cuántas planchas plancha Pancha?"," ")[[1]]

