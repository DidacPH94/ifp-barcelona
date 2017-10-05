Proceso Rango
	//AUTOR: Andrés Alagna
	//VERSIÓN: 1
	//ESPECIFICACIÓN: Rango de 0 a 100
	
	//DEFINICIîN DE VARIABLES
	Definir num1 Como Real; // indico nœmero reales en caso de que sea con decimales.
    // Algoritmo
	Escribir "Introduce el número a verificar";
	Leer num1;
	Si (num1  >= 0) Y (num1 <= 100) Entonces // verificamos el rango incluyendo el 0 y 100
		Escribir "El número ",num1, " se encuentra en el rango de 0 a 100"; 
	SiNo
		Escribir "El número ",num1, " no se encuentra en el rango de 0 a 100"; 
	FinSi
FinProceso
