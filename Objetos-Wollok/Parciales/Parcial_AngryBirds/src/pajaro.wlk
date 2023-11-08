
class Pajaro {
	var property fuerza
	var  ira
	var property velocidad
	
	method enotaje(){
		self.fuerza(ira * 2)
	}
	
	method esFuerte(){
		return self.fuerza() > 50
	}
	
}

object red inherits Pajaro{
	
}
	
}