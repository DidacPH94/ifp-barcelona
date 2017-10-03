Proceso Rango
	//AUTOR: Andrs Alagna
	//VERSIîN: 1
	//ESPECIFICACIîN: Rango de 0 a 100
	
	//DEFINICIîN DE VARIABLES
	Definir num1 Como Real; // indico nœmero reales en caso de que sea con decimales.
    // Algoritmo
	Escribir "Introduce el nœmero a verificar";
	Leer num1;
	Si (num1  >= 0) Y (num1 <= 100) Entonces // verificamos el rango incluyendo el 0 y 100
		Escribir "El numero ",num1, " se encuentra en el rango de 0 a 100"; 
	SiNo
		Escribir "El numero ",num1, " no se encuentra en el rango de 0 a 100"; 
	FinSi
FinProceso
