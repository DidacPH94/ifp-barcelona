Proceso numeroMayor
	//AUTOR: Andr�s Alagna
	//VERSI�N: 1
	//ESPECIFICACI�N: Devuelve el n�mero mayor
	
	//DEFINICI�N DE VARIABLES
	Definir num1 Como Real; // indico n�mero reales en caso de que sea con decimales.
	Definir num2 Como Real;
	//Algoritmo
	Escribir "Introduce el primer n�mero a comparar";
	Leer num1;
	Escribir "Introduce el segundo n�mero a comparar";
	Leer num2;
	Si (num1 != num2) Entonces // comprobamos que los numeros no sean iguales
		Si (num1 > num2) Entonces // comprobamos cual es mayor
			Escribir "El numero mayor es ", num1;
		SiNo
			Escribir "El numero mayor es ", num2;
		FinSi
	SiNo
		Escribir "Los dos numeros son iguales";
	FinSi
FinProceso
