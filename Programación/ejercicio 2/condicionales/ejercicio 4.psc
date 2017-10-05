Proceso productoNumeros
	//AUTOR: Andrés Alagna
	//VERSIÓN: 1ó
	//ESPECIFICACIN: Producto numeros igual, menor o mayor a 0
	
	//DEFINICIÓN DE VARIABLES
	Definir num1, num2 Como Real; // indico nœmero reales en caso de que sea con decimales.
    // Algoritmo
	Escribir "Introduce el primer número";
	Leer num1;
	Escribir "Introduce el segundo número";
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


