Proceso simboloUnico
	//AUTOR: Andr�s Alagna
	//VERSI�N: 1
	//ESPECIFICACI�N: Producto numeros igual, menor o mayor a 0
	
	//DEFINICI�N DE VARIABLES
	Definir simbolo Como cadena; // mostrar si es un s�mbolo de un digito 
	
    // Algoritmo
	Escribir "Introduce un s�mbolo";
	Leer simbolo;
	
	Si (Longitud(simbolo) = 1) Entonces
		Escribir "El s�mbolo es de un s�lo d�gito";
	SiNo
		Escribir "El s�mbolo es de ",Longitud(simbolo), " d�gitos" ;
	FinSi
FinProceso


