Proceso calculador
	Definir pProducto Como Real;
	Definir PconIva como Real;
	Definir Iva como Real;
	Escribir "Ingrese el precio del producto";
	Leer pProducto;
	Iva <- pProducto * 0.21;
	PconIva <- Iva + pProducto;
	Escribir "Precio del producto: ", pProducto;
	Escribir "Iva del producto:    ", Iva;
	Escribir "Total a pagar:       ", PconIva;
	
	
FinProceso
