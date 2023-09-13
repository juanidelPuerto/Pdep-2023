class EnfermedadInfecciosa {
	var property nombre
	var property cantidadCelulasAmenazadas 
	
	
	method reproducirseASiMisma(){
		cantidadCelulasAmenazadas = cantidadCelulasAmenazadas * 2
	}
	
	method enfermar(unaPersona){
		unaPersona.temperatura(unaPersona.temperatura() + self.gradosAumenta()) 
		return unaPersona
	}
	
	method gradosAumenta(){
		return cantidadCelulasAmenazadas / 1000
	}
	
	method esAgresiva(unaPersona){
		return cantidadCelulasAmenazadas >= (unaPersona.cantidadCelulas() * 0.1)
	}
}
