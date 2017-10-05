Proceso segundoGrado
	//AUTOR: AndrÈs Alagna
	//VERSION: 1
	//ESPECIFICACIÓN: dado de 3 caras
	//DEFINICIÓN DE VARIABLES
	Definir op como entero;
	Definir comprobador Como Logico;
	comprobador <- falso;
	// Algoritmo
	Repetir
		Escribir "Ingrese el resultado de lanzamiento de dado de seis lados";
		Leer op;
		Si (op >=1) y (op <=6) Entonces
			comprobador <- Verdadero;
			Segun op Hacer
				1:
					Escribir "El valor del lanzamiento es UNO y su cara opuesta es 6";
				2:
					Escribir "El valor del lanzamiento es DOS y su cara opuesta es 5";
				3:
					Escribir "El valor del lanzamiento es TRES y su cara opuesta es 4";
				4:
					Escribir "El valor del lanzamiento es CUATRO y su cara opuesta es 3";
				5:
					Escribir "El valor del lanzamiento es CINCO y su cara opuesta es 2";
				6:
					Escribir "El valor del lanzamiento es SEIS y su cara opuesta es 1";
			FinSegun
		SiNo
			Limpiar Pantalla;
			Escribir "Has elegido una opciÛn no v·lida"; 
			Escribir "IntÈntalo nuevamente"; 
		FinSi
	
	Hasta Que (comprobador = Verdadero);
FinProceso
