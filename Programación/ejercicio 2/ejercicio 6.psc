SubProceso diascon0 <- diaC(dia)
	Definir diascon0 como cadena;
	Si (dia >= 1) Y (dia <= 9) Entonces
		diascon0 <- ConvertirATexto(dia);
		diascon0 <- Concatenar("0",diasin0);
	SiNo
		Escribir "Nada";
	FinSi
FinSubProceso

Proceso segundoGrado
	//AUTOR: AndrŽs Alagna
	//VERSIîN: 1
	//ESPECIFICACIîN: validaor de formato DD-MM-AAAA
	
	//DEFINICIîN DE VARIABLES
	Definir dia, mes, a Como Entero;
	Escribir "Introduzca el d’a";
	Leer dia;
	Escribir "Introduzca el mes";
	Leer mes;
	Escribir "Introduzca el a–o";
	Leer a;
	//ALGORITMO
	
	 
	
	Si ((dia >= 01) Y (dia<=30) Y (mes >= 01) Y (mes <=12) Y (a>= 01) Y (a <=9999)) Entonces
		Definir dia2 como cadena;
		dia2 <-diac(dia);
		Escribir dia2;
		Escribir "La fecha introducida ", dia,"-",mes,"-",a, " cumple con el formato DD-MM-AAAA";
	SiNo
		Escribir "La fecha no cumple con el formato DD-MM-AAAA. Introduzca valores v‡lidos";
		Escribir "D’as del 01 al 30, Meses del 01 al 12, A–o del 0001 al 9999";
	FinSi
FinProceso


