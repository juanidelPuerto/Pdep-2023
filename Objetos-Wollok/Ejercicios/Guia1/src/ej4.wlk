object juliana {
	 var telefono  
	
	method telefono(unTelefono){
		telefono = unTelefono
	}
	
	method telefono(){
		return telefono
	}
}

object catalina{
	var telefono  
	
	method telefono(unTelefono){
		telefono = unTelefono
	}
	
	method telefono(){
		return telefono
	}
}

object movistar{
	
	method cobro(minutos){
		return 60 * minutos
	}
	
}

object personal{
	
	method cobro(minutos){
		if(minutos >=10){
		return ((minutos - 10) * 40) + 700 
		}else{
			return minutos * 70
		}
	}
	
}

object iphone{
	var bateria = 5
	var companiaTelefonica
	
	method companiaTelefonica(unaCompania){
		companiaTelefonica = unaCompania
	}
	
	method recargar(){
		bateria = 5
	}
	
	method companiaTelefonica(){
		return companiaTelefonica
	}
	
	method llamar(duracion){
		bateria = bateria - (0.001 * duracion)
		var costo = self.companiaTelefonica().cobro(duracion)
		return costo
	}
	
	method bateria(){
		return bateria
	}
	
	method estaApagado(){
		return (self.bateria() == 0)
	}
}

object samsungS21{
	var bateria = 5
	var companiaTelefonica
	
	method companiaTelefonica(unaCompania){
		companiaTelefonica = unaCompania
	}
	
	method companiaTelefonica(){
		return companiaTelefonica
	}
	
	method recargar(){
		bateria = 5
	}
	
	method llamar(duracion){
		bateria = bateria - 0.25
		var costo = self.companiaTelefonica().cobro(duracion)
		return costo
	}
	
	method estaApagado(){
		return (self.bateria() == 0)
	}
	
	method bateria(){
		return bateria
	}
}