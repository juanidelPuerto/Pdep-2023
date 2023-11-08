class Vikingo{
	var property casta = new Jarl(vikingo=self)
	var property botinAhorrado = 0
	
	method esProductivo()
	method ascenderSocialmente(){
		self.casta().ascender()
	}
	
	method bonificarAscenso()
	method recibirBotin(cantidad){
		botinAhorrado += cantidad
	}
}


class Granjero inherits Vikingo{
	var property cantidadDeHijos
	var property cantidadDeHectareasDesignadas
	
	override method esProductivo(){
		return cantidadDeHijos / cantidadDeHectareasDesignadas >= 2
	}
	
	method tieneArmas() = false
	
	override method bonificarAscenso(){
		cantidadDeHijos += 2
		cantidadDeHectareasDesignadas += 2
	}
}


class Soldado inherits Vikingo{
	var property cantidadArmas 
	var property vidasCobradas
	
	override method bonificarAscenso(){
		cantidadArmas += 10
	}
	
	override method esProductivo(){
		return vidasCobradas>20 && self.tieneArmas()
	}
	
	method tieneArmas() = return cantidadArmas > 0
}


class Casta{
	var property vikingo
	method puedeIrExpedicion(expedicion) = true 
	method ascender(){}
}

class Jarl inherits Casta{
	override method puedeIrExpedicion(expedicion) = !self.vikingo().tieneArmas()
	
	override method ascender(){
		self.vikingo().bonificarAscenso()
		self.vikingo().casta(new Karl(vikingo=self.vikingo())) 
	}
}

class Karl inherits Casta{
	override method ascender(){
		self.vikingo().casta(new Thrall(vikingo=self.vikingo())) 
	}
}

class Thrall inherits Casta{
}

