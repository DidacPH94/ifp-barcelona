Proceso Rango
	//AUTOR: Andr�s Alagna
	//VERSI�N: 1
	//ESPECIFICACI�N: Rango de 0 a 100
	
	//DEFINICI�N DE VARIABLES
	Definir num1 Como Real; // indico n�mero reales en caso de que sea con decimales.
    // Algoritmo
	Escribir "Introduce el n�mero a verificar";
	Leer num1;
	Si (num1  >= 0) Y (num1 <= 100) Entonces // verificamos el rango incluyendo el 0 y 100
		Escribir "El n�mero ",num1, " se encuentra en el rango de 0 a 100"; 
	SiNo
		Escribir "El n�mero ",num1, " no se encuentra en el rango de 0 a 100"; 
	FinSi
FinProceso
