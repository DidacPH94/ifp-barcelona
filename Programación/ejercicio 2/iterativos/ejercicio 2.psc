	Proceso segundoGrado
		//AUTOR: AndrÈs Alagna
		//VERSION: 1
		//ESPECIFICACIÓN: conversor de medidas
		//DEFINICIÓN DE VARIABLES
		Definir op como entero;
		Definir metrica como Real;
		Definir comprobador como Logico;
		comprobador <- falso;
		// Algoritmo
		Repetir
			
			Escribir "Elija la conversiÛn que desea realizar";
			Escribir "	1. De Km a millas marinas";
			Escribir "	2. De Km a millas terrestres";
			Escribir "	3. De millas marinas a Km";
			Escribir "	4. De millas marinas a millas terrestres";
			Escribir "	5. De millas terrestres a KM";
			Escribir "	6. De millas terrestres a millas marinas";
			Leer op;
			Si (op >=1) y (op <=6) Entonces
				comprobador <- Verdadero;
				Limpiar Pantalla;
				Escribir "Ingrese el valor que desea convertir"; 
				Leer metrica;
				Segun op Hacer
					1:
						Escribir metrica, " Km equivalen a ", metrica*0.539957, " millas marinas";
					2:
						Escribir metrica, " Km equivalen a ", metrica*0.621371, " millas terrestres";
					3:
						Escribir metrica, " millas marinas equivalen a ", metrica*1.852, " Km";
					4:
						Escribir metrica, " millas marinas equivalen a ", metrica*1.15078, " millas terrestres";
					5:
						Escribir metrica, " millas millas terrestres equivalen a ", metrica*1.60934, " Km";
					6:
						Escribir metrica, " millas millas terrestres equivalen a ", metrica*0.868976, " millas marinas";
				FinSegun
			SiNo
				Limpiar Pantalla;
				Escribir "Has elegido una opciÛn no v·lida"; 
				Escribir "IntÈntalo nuevamente"; 
			FinSi
		
		Hasta Que (comprobador = Verdadero);
FinProceso


