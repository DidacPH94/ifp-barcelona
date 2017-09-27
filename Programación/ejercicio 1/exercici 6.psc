Proceso cambio
	Definir temp Como Cadena;
	Definir a como Cadena;
	Definir b como Cadena;
	Escribir "Introduce un valor para a";
	Leer a;
	Escribir "Introduce un valor para b";
	Leer b;
	temp <- b;
	b <-a;
	a <- temp;
	Escribir "El nuevo valor de a es ", a;
	Escribir "El nuevo valor de b es ", b;
FinProceso
