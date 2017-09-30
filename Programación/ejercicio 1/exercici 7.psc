Proceso sgds
    Definir horas como entero;
    Definir minutos Como entero;
    Definir segundos como entero;
    Definir cantidad como real;
    Definir tiempo2 como real;
    
    Escribir "Indica la cantidad de segundos:";
    Leer cantidad;
    
    horas <- trunc(cantidad / 3600); 
    tiempo2 <- cantidad mod 3600; 
    minutos <- trunc(tiempo2 / 60); 
    segundos <- tiempo2 mod 60; 
    
    Escribir "Son ", horas, "h:", minutos, "m:", segundos, "s.";
FinProceso
