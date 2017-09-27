Proceso reporte
	definir Ccola, Cnaranjas, Climones Como Entero;
	definir Pcola, Pnaranjas, Plimones Como Real;
	definir Tcola, Tnaranjas, Tlimones como Real;
	// Colas
	Escribir "Introduce la cantidad de colas vendidas";
	Leer Ccola;
	Escribir "Introduce el precio unitario de la cola";
	Leer Pcola;
	Tcola <- Ccola * Pcola;
	// Naranjas
	Escribir "Introduce la cantidad de naranjas vendidas";
	Leer Cnaranjas;
	Escribir "Introduce el precio unitario de las naranjas";
	Leer Pnaranjas;
	Tnaranjas <- Cnaranjas * Pnaranjas;
	// Limones
	Escribir "Introduce la cantidad de limones vendidas";
	Leer Climones;
	Escribir "Introduce el precio unitario de los limones";
	Leer Plimones;
	Tlimones <- Climones * Plimones;
	Escribir "-------------------------------------------------";
	Escribir "Producte       Vendes        Preu         Total";
	Escribir "Cola           ",Ccola,"            ",Pcola,"            ", Tcola; 
	Escribir "Naranjas       ",Cnaranjas,"            ",Pnaranjas,"            ", Tnaranjas; 
	Escribir "Limones        ",Climones,"            ",Plimones,"            ", Tlimones;
	Escribir "                                       Total: ", Tcola + Tnaranjas + Tlimones;
	
	
FinProceso
