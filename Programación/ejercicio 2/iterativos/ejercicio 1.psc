Proceso segundoGrado
	//AUTOR: Andrés Alagna
	//VERSION: 1
	//ESPECIFICACIîN: menu de 3 opciones
	//DEFINICIîN DE VARIABLES
	Definir op como entero;
	// Algoritmo
	Repetir
		Escribir "Elija un lenguaje de programación para continuar";
		Escribir "	1. Java";
		Escribir "	2. Javascript";
		Escribir "	3. C++";
		Leer op;
		Segun op Hacer
			1:
				Escribir "Has elegido la opción ", op, ": Java";
			2:
				Escribir "Has elegido la opción ", op, ": Javascript";
			3:
				Escribir "Has elegido la opción ", op, ": C++";
			De Otro Modo:
				Escribir "Opción no válida. Inténtelo nuevamente";
		FinSegun
	Hasta Que (op > 1) Y (op <= 3);
FinProceso
