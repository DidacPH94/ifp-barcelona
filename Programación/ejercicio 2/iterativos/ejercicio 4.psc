Proceso validadorDdni
	Definir dni,modulo,Vnumerico Como Entero;
	Definir letras como Cadena;
	Definir letrasDni Como Caracter;
	letras <- "TRWAGMYFPDXBNJZSQVHLCKE";
	vNumerico <- 0;
	Repetir
		Escribir "Escriba el número del DNI del que desea calcular la letra";
		Leer dni;
		Si (dni >= 1) Y (dni <= 99999999) Entonces
			vNumerico <-1;
		FinSi
		Segun vNumerico Hacer
			1:
				modulo <- dni % 23;
				letrasDni <- Subcadena(letras, modulo, modulo);
				Escribir "La letra corrrespondiente al DNI ", dni, " es ", letrasDni;
			De Otro Modo:
				Escribir "El DNI ingresado no es válido";
				Escribir "El DNI debe contener como máximo 8 dígitos";
		FinSegun
	Hasta Que (vNumerico != 0)

FinProceso
