class Operacion {
	const empleado
	const property inmueble
	var property estado = disponible
	
	method comision()
}


class Alquiler inherits Operacion{
	const property cantidadDeMeses
	
	override method comision(){
		return (cantidadDeMeses * self.inmueble().valor()) / 50000
	}
}

class Venta inherits Operacion{
	
	
	override method comision(){
		return (self.inmueble().valor() * (porcentaje /100))
	}
}