class Persona {
	 var property nombre 
	 var property temperatura 
	 var property cantidadCelulas  
	 var property enfermedades = []
	
	 
	method vivirUnDia(){
		enfermedades.forEach{enfermedad => enfermedad.enfermar(self)}
	}
	
	method contraerEnfermedad(unaEnfermedad){
		enfermedades.add(unaEnfermedad)
	}
	
	
	method enComa(){
		return (temperatura >= 45 || self.cantidadCelulas() < 1000000)
	}
	
	method enfermedadMasDaninia(){
		return enfermedades.sortedBy({enfermedad1, enfermedad2 => enfermedad1.cantidadCelulasAmenazadas() >= enfermedad2.cantidadCelulasAmenazadas()}).first()
	}
}
