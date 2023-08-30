object pepita {
	var energia = 100
	var lugar = "inicial"
	var entrenador
	
	method volar(kilometros){
		energia = energia - kilometros - 10
	}
	
	method comer(gramos){
		energia = energia + (gramos * 4)
	}
	
	method energia(){
		return energia
	}
	
	method lugar(){
		return lugar
	}
	
	method irA(lugarDestino){
		lugar = lugarDestino
		self.volar()
		
	}
	
	method puedeIrA(lugar){
		
	}
}

object roque{
	
}

object susana{
	
}

object pepon{
	var energia
	
	method comer(gramos){
		energia = energia + (3 * gramos) - 20
	}
	
	method volar(kilometros){
		energia = energia - (2 * kilometros) 
	}
}

object luciana{
	
}

object ernestina{
	
	
}
