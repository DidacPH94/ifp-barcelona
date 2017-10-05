Proceso simboloUnico
	//AUTOR: Andrés Alagna
	//VERSIÓN: 1
	//ESPECIFICACIÓN: Producto numeros igual, menor o mayor a 0
	
	//DEFINICIÓN DE VARIABLES
	Definir simbolo Como cadena; // mostrar si es un s’mbolo de un digito 
	
    // Algoritmo
	Escribir "Introduce un símbolo";
	Leer simbolo;
	
	Si (Longitud(simbolo) = 1) Entonces
		Escribir "El símbolo es de un sólo dígito";
	SiNo
		Escribir "El símbolo es de ",Longitud(simbolo), " dígitos" ;
	FinSi
FinProceso


