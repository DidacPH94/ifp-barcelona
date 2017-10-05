Proceso ordenCreciente
	//AUTOR: Andr�s Alagna
	//VERSI�N: 1
	//ESPECIFICACI�N: Orden creciente 3 numeros => 1,2,3
	
	//DEFINICI�N DE VARIABLES
	Definir num1, num2, num3 Como Real; // indico n�mero reales en caso de que sea con decimales.
	
    // Algoritmo
	Escribir "Introduce el primer n�mero";
	Leer num1;
	Escribir "Introduce el segundo n�mero";
	Leer num2;
	Escribir "Introduce el tercer n�mero";
	Leer num3;
	
	Si (num1 <= num2) Y (num2 <= num3) Entonces // orden num1, num2,num3
		Escribir "Los n�meros en orden creciente son ", num1, ", ",num2,", ",  num3;
	SiNo 
		Si (num1 <= num3) Y (num3 <= num2) Entonces // orden num1, num3, num2
			Escribir "Los n�meros en orden creciente son ", num1, ", ",num3,", ",  num2;
		SiNo
			Si 	(num2 <= num1) Y (num1 <= num3) Entonces // orden num2, num1, num3
				Escribir "Los n�meros en orden creciente son ", num2, ", ",num1,", ",  num3;
			SiNo
				Si (num3 <=num2) Y (num2 <= num1) Entonces // orden num3, num2, num1
					Escribir "Los n�meros en orden creciente son ", num3, ", ",num2,", ",  num1;
				SiNo
					Si (num3 <= num1) Y (num1 <= num2) Entonces // orden num 3, num1, num2
						Escribir "Los n�meros en orden creciente son ", num3, ", ",num1,", ",  num2;
					SiNo
						Escribir "Los n�meros en orden creciente son ", num2, ", ",num3,", ",  num1; // orden num2, num3, num1
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinProceso


