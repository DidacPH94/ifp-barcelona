Proceso productoNumeros
	//AUTOR: AndrŽs Alagna
	//VERSIîN: 1
	//ESPECIFICACIîN: Producto numeros igual, menor o mayor a 0
	
	//DEFINICIîN DE VARIABLES
	Definir num1, num2 Como Real; // indico nœmero reales en caso de que sea con decimales.
	
    // Algoritmo
	Escribir "Introduce el primer nœmero";
	Leer num1;
	Escribir "Introduce el segundo nœmero";
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


