Proceso segundoGrado
	//AUTOR: Andr�s Alagna
	//VERSION: 1
	//ESPECIFICACI�N: menu de 3 opciones
	//DEFINICI�N DE VARIABLES
	Definir op como entero;
	// Algoritmo
	Repetir
		Escribir "Elija un lenguaje de programaci�n para continuar";
		Escribir "	1. Java";
		Escribir "	2. Javascript";
		Escribir "	3. C++";
		Leer op;
		Segun op Hacer
			1:
				Escribir "Has elegido la opci�n ", op, ": Java";
			2:
				Escribir "Has elegido la opci�n ", op, ": Javascript";
			3:
				Escribir "Has elegido la opci�n ", op, ": C++";
			De Otro Modo:
				Escribir "Opci�n no v�lida. Int�ntelo nuevamente";
		FinSegun
	Hasta Que (op > 1) Y (op <= 3);
FinProceso
