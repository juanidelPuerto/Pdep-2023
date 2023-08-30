object pepe {
	var categoria 
	var faltas = 0
	var bonoResultados
	var sueldo = 0
	
	method sueldo(){
		sueldo = categoria.neto() + bonoPresentismo.calcularValor(faltas) + self.bonoResultados().valor(categoria.neto())
		return sueldo
	}
	
	method bonoResultados(){
		return bonoResultados
	}
	
	method categoria(unaCategoria){
		categoria = unaCategoria
	}
	
	method faltas(unasFaltas){
		faltas = unasFaltas
	}
	
	method bonoPresentismo(unBono){
		bonoPresentismo = unBono
	}
	
	method bonoResultados(unBono){
		bonoResultados = unBono
	}
	
}

object bonoNulo{
	method valor(_){
		return 0
	}
}

object bonoFijo{
	method valor(_){
		return 80
	}
}

object bonoDiezPorciento{
	method valor(neto){
		return (0.1 * neto)
	}
}

object bonoPresentismo{
	
	method calcularValor(cantFaltas){
		if(cantFaltas == 0){
			return 100
		}
		if(cantFaltas == 1){
			return 50
		}
		return 0
	}	
}

object gerente{
	var neto = 1000
	
	method neto(){
		return neto
	}
}

object cadete{
	var neto = 1500
	
	method neto(){
		return neto
	}
}