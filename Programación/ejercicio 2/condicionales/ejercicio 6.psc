Proceso segundoGrado
	//AUTOR: AndrÈs Alagna
	//VERSIÓN: 1
	//ESPECIFICACIÓN: ecuaciones de segundo grado
	//DEFINICIÓN DE VARIABLES
	Definir a,b,c,d,sol1, sol2 como Real;
	// Algoritmo
	Escribir "Ingrese el coeficiente de a";
	Leer a;
	Escribir "Ingrese el coeficiente de b";
	Leer b;	
	Escribir "Ingrese el coeficiente de c";
	Leer c;
	
	d <- ((b*b) - (4*(a*c))) ; // calculamos el discriminante ;
	Escribir d;
	Si (d > 0 ) Y (a !=0) entonces // existen dos soluciones 
		sol1 <- (-b + (rc(d)))/(2*a);
		sol2 <- (-b - (rc(d)))/(2*a);
		Escribir "X tiene el valor de: ", sol1;
		Escribir "X tiene el valor de: ", sol2;
	SiNo
		Si (d = 0)Y (a !=0) entonces // solo tiene una soluciÛn 
			sol1 <- -b/(2*a);
			Escribir "X tiene el valor de: ", sol1;
		SiNo
			Escribir "X no tiene raices reales";
			Escribir "Problema sin soluciÛn";
		FinSi
	FinSi
FinProceso


