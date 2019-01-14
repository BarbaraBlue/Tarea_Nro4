#Pregunta 8 tarea 4

#ContarSaldoNegativo: Lista_Clientes -> SaldoNeg_Clientes
#def ContarSaldoNegativo: recibe una lista de clientes, con cuenta de cliente, saldo de la cuenta y nombre del cliente,
#devuelve como resultado los clientes que tengan saldo negativos

Lista_clientes<-list(list(1,"Cleo",5000),list(2,"Mati",-4000),list(3,"Lupita",-1000),list(4,"Osiris",3500))


ContarSaldoNegativo <- function(Lista_Clientes){
  QClientesSaldoNegativo <- 0
  for (cliente in Lista_Clientes){
    if (cliente[3] < 0){
      QClientesSaldoNegativo<- (QClientesSaldoNegativo+1)
    }
  }
  return(QClientesSaldoNegativo)
}

ContarSaldoNegativo(Lista_Clientes)

#Respuesta:Dos clientes de la lista tienen saldo negativo

#Pregunta 9 tarea 4

Frase <- "No quiero que termine B1g D4t@! :("

#Sin_Vocales: string double int -> string sin vocales
#def Sin_Vocales: recibe un string con cualquier tipo de carácteres 
#y devuelve el mismo pero sin vocales.
#Ejemplo: Sin_Vocales("No quiero que termine B1g D4t@")->"N qr q trmn B1g D4t@! :("

Sin_Vocales <- function(Frase){
  stringsinvocales <- ""
  strspliteada <- strsplit(Frase, "")[[1]]  
  for (letra in strspliteada){
    if(letra != "a" && letra != "e" && letra != "i" && letra != "o" && letra != "u") {
      stringsinvocales <- paste(stringsinvocales, letra, sep="")
    }
  }
  return(stringsinvocales)
}

Sin_Vocales(Frase)
