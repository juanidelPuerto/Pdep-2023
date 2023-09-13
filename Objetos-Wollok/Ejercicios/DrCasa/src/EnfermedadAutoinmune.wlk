class EnfermedadAutoinmune {
	var property nombre
	var property cantidadCelulasAmenazadas
	
	method enfermar(unaPersona){
		unaPersona.cantidadCelulas(unaPersona.cantidadCelulas() - cantidadCelulasAmenazadas)
		return unaPersona
	}
	
	method esAgresiva(unaPersona){
		
	}
}
