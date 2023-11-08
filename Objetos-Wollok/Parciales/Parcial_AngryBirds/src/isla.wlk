class Isla {
	var pajaros = []
	
	method pajarosFuertes(){
		return pajaros.filter{unPajaro => unPajaro.esFuerte()}
	}	
	
	method fuerzaDeLaIsla(){
		return pajaros.sum{unPajaro => unPajaro.fuerza()}
	}
}
