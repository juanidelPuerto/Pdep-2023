object tom {
	var energia = 100
	var velocidad = 0
	
	method comerRaton(unRaton){
		energia = energia + (12 + unRaton.peso())
		return energia
	}
	
	method energia(){
		return energia	
	}
	
	method velocidad(){
		velocidad = 5 + (self.energia() / 10)	
	}
	
	method correr(metros){
		energia = energia - (0.5 * metros)
		return energia
	}
	
	method meConvieneComerRatonA(unRaton, unaDistancia){
		const energiaComerRaton = self.comerRaton(unRaton)
		const energiaCorrer = self.correr(unaDistancia)
		
		return (energiaComerRaton > energiaCorrer)
	}
}


object jerry{
	var peso = 30
	
	method peso(){
		return peso
	}
}
