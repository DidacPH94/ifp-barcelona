Proceso productoNumeros
	//AUTOR: Andr�s Alagna
	//VERSI�N: 1�
	//ESPECIFICACIN: Producto numeros igual, menor o mayor a 0
	
	//DEFINICI�N DE VARIABLES
	Definir num1, num2 Como Real; // indico n�mero reales en caso de que sea con decimales.
    // Algoritmo
	Escribir "Introduce el primer n�mero";
	Leer num1;
	Escribir "Introduce el segundo n�mero";
	Leer num2;
	
	Si ((num1 * num2 ) = 0) Entonces
		Escribir "El producto es igual a 0";
	SiNo
		Si ((num1 * num2 ) > 0) Entonces
			Escribir "El producto es mayor a 0";
		SiNo
			Escribir "El producto es menor a 0";
		FinSi
	FinSi
FinProceso


