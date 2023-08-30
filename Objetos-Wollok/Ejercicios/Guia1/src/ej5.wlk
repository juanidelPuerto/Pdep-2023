object camion{
	var pesoMaximo = 500
	var cantCosasTransportadas
	
	
	method transportar(){
		
	}
	
}


object silla{
	var peso = 3
	var color = "blanco"
	
}

object sillaGamer{
	var peso = 7
	var color = "rojo"
	
}

object sillaPlegable{
	var peso = 5
	var color = "verde"
	
}

object televisorLED{
	var color = "negro"
	var peso = 15
	var largo = 10
	var ancho = 122 
	var estado = "apagado"
	
	method encender(){
		estado = "encendido"
	}
	method apagar(){
		estado = "apagado"
	}
	method subirVolumen(){}
	method bajarVolumen(){}
}

object televisorPlasma{
	var color = "blanco"
	var peso = 20
	var largo = 10
	var ancho = 122 
	var estado = "apagado"
	
	method encender(){
		estado = "encendido"
	}
	method apagar(){
		estado = "apagado"
	}
	method subirVolumen(){}
	method bajarVolumen(){}
}