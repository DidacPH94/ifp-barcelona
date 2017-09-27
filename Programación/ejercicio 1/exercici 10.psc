Proceso ultimodigito	
	Definir num, ultimo como entero;
	Definir numc como cadena;
	Escribir "Introduce un número entero";
	Leer num; 
	numc <- ConvertirATexto(num);
	ultimo <- ConvertirANumero(Subcadena(numc,Longitud(numc)-1,Longitud(numc)-1));
	Escribir "El último dígito es: ", ultimo;
FinProceso
