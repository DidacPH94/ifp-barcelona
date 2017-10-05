//AUTOR: Andrés Alagna
//VERSIÓN: 1
//ESPECIFICACIÓN: la hora en un segundo
Proceso validarFecha
	//DEFINICIÓN DE VARIABLES
	Definir dia, mes, a, horas,minutos, sgdos Como Entero;
	Definir fecha,bisiesto Como Logico; // este valor nos servir‡ para determinar si pasamos al algoritmo que suma un segundo o no
	Escribir "Introduzca el día";
	Leer dia;
	Escribir "Introduzca el mes";
	Leer mes;
	Escribir "Introduzca el año";
	Leer a;
	Escribir "Introduzca las horas";
	Leer horas;
	Escribir "Introduzca los minuto";
	Leer minutos;
	Escribir "Introduzca los segundos";
	Leer sgdos;
	
	
	// ALGORITMO PARA FECHAS
	Si ((dia >= 01) Y (dia<=31) Y (mes >= 01) Y (mes <=12) Y (a>= 01) Y (a <=9999))  Entonces // verificamos todos los valores introducidos
		Si ((mes=1) O (mes=3) O (mes=5) O (mes=7) O (mes=8) O (mes=10) O (mes=12)) Entonces // verificamos los meses de 31 d“as
			Escribir "La fecha introducida ", ponerCeros(dia),"-",ponerCeros(mes),"-",ponerCerosAla(a), " cumple con el formato DD-MM-AAAA";
			fecha <- Verdadero;
		SiNo
			Si (mes=2)  Entonces // en febrero hacemos la siguientes comprobaciones
				Si ((a % 4 = 0) Y (a % 100 != 0)) O (a % 400 = 0) Y (dia <= 29) Entonces // calcular si es bisiesto
					Escribir "La fecha introducida ", ponerCeros(dia),"-",ponerCeros(mes),"-",ponerCerosAla(a), " cumple con el formato DD-MM-AAAA";
					fecha <- Verdadero;
					bisiesto <- verdadero;
				SiNo
					Si (dia <= 28) Entonces // no es bisiesto 
						Escribir "La fecha introducida ", ponerCeros(dia),"-",ponerCeros(mes),"-",ponerCerosAla(a), " cumple con el formato DD-MM-AAAA";
						fecha <- Verdadero;
						bisiesto <- falso;
					SiNo
						Escribir "El año introducido no es bisiesto";
						fecha <- falso;
					FinSi
				FinSi
			SiNo
				Si ((mes=4) O (mes=6) O (mes=9) O (mes=11)) Y (dia<=30) Entonces // verificamos los meses restantes
					Escribir "La fecha introducida ", ponerCeros(dia),"-",ponerCeros(mes),"-",ponerCerosAla(a), " cumple con el formato DD-MM-AAAA";
					fecha <- Verdadero;
				SiNo
				Escribir "El número de día introducido no corresponde con el mes";
				Escribir "Meses de 28 días: Febrero tiene 28 salvo.";
				Escribir "Meses de 30 días: Abril, junio, septiembre y noviembre.";
			    Escribir "Meses de 31 días: Enero, marzo, mayo, julio, agosto, octubre y diciembre.";
				fecha <- falso;
				FinSi
			FinSi
		FinSi
	SiNo
		Escribir "La fecha no cumple con el formato DD-MM-AAAA.";
		Escribir "Valores válidos: días del 01 al 31, meses del 01 al 12, años del 0001 al 9999";
		fecha <- falso;
	FinSi
	
	// ALGORITMO PARA PARA SUMAR UN SEGUNDO
	Si (verificadorDeValores(horas,minutos,sgdos) Y fecha) Entonces // verificamos el formato y fecha
		Escribir "La hora introducida ", ponerCeros(horas),":",ponerCeros(minutos),":",ponerCeros(sgdos), " cumple con el formato HH-MM-SS";
		Si (sgdos <= 58) Entonces // tan solo sumamos un segundo y todo sigue igual
			Escribir "La fecha en un segundo será ", ponerCeros(dia),"-",ponerCeros(mes),"-",ponerCerosAla(a)," ",ponerCeros(horas),":",ponerCeros(minutos),":",ponerCeros(sgdos+1);
		SiNo
			Si (minutos <= 58) Entonces // cambia el minuto + 1, pero no cambia hora
				Escribir "La fecha en un segundo será ", ponerCeros(dia),"-",ponerCeros(mes),"-",ponerCerosAla(a)," ",ponerCeros(horas),":",ponerCeros(minutos+1),":",ponerCeros(0);
			SiNo
				Si (minutos = 59 Y horas <23)  Entonces // cambia minuto, segundo y hora 
					Escribir "La fecha en un segundo será ", ponerCeros(dia),"-",ponerCeros(mes),"-",ponerCerosAla(a)," ",ponerCeros(horas+1),":",ponerCeros(0),":",ponerCeros(0);
				SiNo
					Si ((horas =23) Y (mes != 12)) Entonces // cambia minuto, segundo, hora, día o mes según sea 30,31,28,29
						Si ((dia=30) Y ((mes=4) O (mes=6) O (mes=9) O (mes=11)))  Entonces
							Escribir "La fecha en un segundo será ",ponerCeros(1),"-",ponerCeros(mes+1),"-",ponerCerosAla(a)," ",ponerCeros(0),":",ponerCeros(0),":",ponerCeros(0);
						SiNo
							Si ((dia = 31)Y((mes=1) O (mes=3) O (mes=5) O (mes=7) O (mes=8) O (mes=10))) Entonces
								Escribir "La fecha en un segundo será ",ponerCeros(1),"-",ponerCeros(mes+1),"-",ponerCerosAla(a)," ",ponerCeros(0),":",ponerCeros(0),":",ponerCeros(0);
							SiNo
								Si (mes != 2) Entonces
									Escribir "La fecha en un segundo será ",ponerCeros(dia+1),"-",ponerCeros(mes),"-",ponerCerosAla(a)," ",ponerCeros(0),":",ponerCeros(0),":",ponerCeros(0);
								SiNo
									Si ((bisiesto = Verdadero) Y (dia = 28)) Entonces
										Escribir "La fecha en un segundo será ",ponerCeros(dia+1),"-",ponerCeros(mes),"-",ponerCerosAla(a)," ",ponerCeros(0),":",ponerCeros(0),":",ponerCeros(0);
									SiNo
										Si ((bisiesto = falso) y (dia = 28)) o ((bisiesto = Verdadero) Y (dia = 29)) Entonces
											Escribir "La fecha en un segundo será ",ponerCeros(1),"-",ponerCeros(mes+1),"-",ponerCerosAla(a)," ",ponerCeros(0),":",ponerCeros(0),":",ponerCeros(0);
										SiNo
											Escribir "La fecha en un segundo será ",ponerCeros(dia+1),"-",ponerCeros(mes),"-",ponerCerosAla(a)," ",ponerCeros(0),":",ponerCeros(0),":",ponerCeros(0);
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					SiNo
						Si ((mes= 12) Y (dia != 31)) Entonces // dia normal de diciembre
							Escribir "La fecha en un segundo será ",ponerCeros(dia+1),"-",ponerCeros(mes),"-",ponerCerosAla(a)," ",ponerCeros(0),":",ponerCeros(0),":",ponerCeros(0);
						SiNo
							Si ((mes= 12) Y (dia = 31)) Entonces // ultimo dia de diciembre 
								Escribir "La fecha es en un segundo será ",ponerCeros(1),"-",ponerCeros(1),"-",ponerCerosAla(a+1)," ",ponerCeros(0),":",ponerCeros(0),":",ponerCeros(0);
							SiNo
								Escribir "Algo salió mal, inténtalo nuevamente";
							FinSi
							
						FinSi
					FinSi
				FinSi
			FinSi
			
		FinSi
	SiNo
		Escribir "Intente nuevamente";
	FinSi
	
	
FinProceso

SubProceso vlor <-verificadorDeValores(horas,minutos,sgdos)
	Definir vlor como logico;
	Si (((horas >= 1) Y (horas <= 23)) Y ((minutos >= 0) Y (minutos <= 59)) Y ((sgdos >= 0) Y (sgdos <= 59))) Entonces
		vlor<-Verdadero;
	SiNo
		Escribir "El formato introducido para la hora no es válido";
		vlor <- falso;
	FinSi
FinSubProceso

// Subproceso que le a–ade el 0 a los d’as y meses, horas, minutos y segundos introducidos en caso de no tenerlos 
SubProceso diasYmesCon <- ponerCeros(x)
	Definir diasYmesCon como cadena;
	Si (x >= 0) Y (x <= 9) Entonces // d’as y meses del 01 al 09
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
