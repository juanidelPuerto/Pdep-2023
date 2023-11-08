class PuntoInteres{
	
	
	method valeLaPena(unosVikingos) 
	method botin(unosVikingos)
	method serInvadido(unosVikingos)
}



class Aldea inherits PuntoInteres{
	var property cantidadDeCrucifijos
	
	
	override method valeLaPena(unosVikingos){
		return (self.botin(unosVikingos) / unosVikingos) >= 15	
	}
	
	override method botin(unosVikingos){
		return self.cantidadDeCrucifijos()
	}
	
	
	
	
	override method serInvadido(unosVikingos){
		cantidadDeCrucifijos -= unosVikingos
	}
}



class AldeaAmurallada inherits Aldea{
	var cantidadMinimaVikingos
	
	override method valeLaPena(unosVikingos){
		return 	(unosVikingos > cantidadMinimaVikingos) && super (unosVikingos)	
	}
}


class Capital inherits PuntoInteres{
	var property factorDeRiqueza
	var property cantidadDefensores
	
	override method valeLaPena(unosVikingos){
		return (self.botin(unosVikingos) / unosVikingos) >= 3
	}
	
	override method botin(unosVikingos){
		return unosVikingos + factorDeRiqueza
	}
	
	override method serInvadido(unosVikingos){
		cantidadDefensores -= unosVikingos
	}
}


