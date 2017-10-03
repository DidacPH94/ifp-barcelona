//AUTOR: AndrŽs Alagna
//VERSIîN: 1
//ESPECIFICACIîN: validador de formato DD-MM-AAAA
Proceso validarFecha
	//DEFINICIîN DE VARIABLES
	Definir dia, mes, a Como Entero;
	Escribir "Introduzca el d’a";
	Leer dia;
	Escribir "Introduzca el mes";
	Leer mes;
	Escribir "Introduzca el a–o";
	Leer a;
	
	
	// ALGORITMO
	Si ((dia >= 01) Y (dia<=31) Y (mes >= 01) Y (mes <=12) Y (a>= 01) Y (a <=9999))  Entonces // verificamos todos los valores introducidos
		Si ((mes=1) O (mes=3) O (mes=5) O (mes=7) O (mes=8) O (mes=10) O (mes=12)) Entonces // verificamos los meses de 31 d“as
			Escribir "La fecha introducida ", ponerCeros(dia),"-",ponerCeros(mes),"-",ponerCerosAla(a), " cumple con el formato DD-MM-AAAA";
		SiNo
			Si ((mes=2) Y (dia<=28)) Entonces // verificamos febrero hasta 28 d“as 
				Escribir "La fecha introducida ", ponerCeros(dia),"-",ponerCeros(mes),"-",ponerCerosAla(a), " cumple con el formato DD-MM-AAAA";
			SiNo
				Si ((mes=4) O (mes=6) O (mes=9) O (mes=11)) Y (dia<=30) Entonces // verificamos los meses restantes
					Escribir "La fecha introducida ", ponerCeros(dia),"-",ponerCeros(mes),"-",ponerCerosAla(a), " cumple con el formato DD-MM-AAAA";
				SiNo
				Escribir "El nœmero de d’a introducido no corresponde con el mes";
				Escribir "Meses de 28 d’as: Febrero tiene 28 salvo.";
				Escribir "Meses de 30 d’as: Abril, junio, septiembre y noviembre.";
			    Escribir "Meses de 31 d’as: Enero, marzo, mayo, julio, agosto, octubre y diciembre.";
				FinSi
			FinSi
		FinSi
	SiNo
		Escribir "La fecha no cumple con el formato DD-MM-AAAA.";
		Escribir "Valores v‡lidos: d’as del 01 al 31, meses del 01 al 12, a–os del 0001 al 9999";
	FinSi

FinProceso

// Subproceso que le a–ade el 0 a los d’as y meses introducidos en caso de no tenerlos 
SubProceso diasYmesCon <- ponerCeros(x)
	Definir diasYmesCon como cadena;
	Si (x >= 1) Y (x <= 9) Entonces // d’as y meses del 01 al 09
		diasYmesCon <- Concatenar("0",ConvertirATexto(x));
	SiNo
		diasYmesCon <- ConvertirATexto(x); // devuelve el d’a o mes tal cual.
	FinSi
FinSubProceso

// Subproceso que le a–ade el 0 a los a–os introducidos en caso de no tenerlos
SubProceso aCon <- ponerCerosAlA(x)
	Definir aCon como cadena;
	Si (x >= 1) Y (x <= 9) Entonces // del 0001 al 0009
		aCon <- Concatenar("000",ConvertirATexto(x));
	SiNo
		Si (x >= 10) Y (x <= 99) Entonces // del 0010 al 0099
			aCon <- Concatenar("00",ConvertirATexto(x));
		SiNo
			Si (x >= 100) Y (x <= 999) Entonces // del 0100 al 0999
				aCon <- Concatenar("0",ConvertirATexto(x));
			SiNo
				aCon <- ConvertirATexto(x); // devuelve el a–o tal cual.
			FinSi
		FinSi
	FinSi
FinSubProceso
