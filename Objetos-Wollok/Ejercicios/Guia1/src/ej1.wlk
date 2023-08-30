object pepita {
	var energia = 100
	var lugar = "inicial"
	
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

