class Inmueble {
	var property tamanioEnMetrosCuadrados
	var property cantidadAmbientes
	const operacion
	const property zona
	
	method valor()
	
}


class Casa inherits Inmueble{
	var property valor
	
	override method valor() = valor
}


class Ph inherits Inmueble{
	override method valor() = return (self.tamanioEnMetrosCuadrados() * 14000) + 500000
}

class Departamento inherits Inmueble{
	override method valor() = return self.cantidadAmbientes() * 350000
	
}