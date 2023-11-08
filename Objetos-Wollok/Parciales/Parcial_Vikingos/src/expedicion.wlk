import aldeayCapital.*
import vikingo.*

class Expedicion {
	var property puntosDeInteres = []
	var property vikingosQueLaIntegran = []
	
	method subir(vikingo){
		if(!vikingo.casta().puedeIrExpedicion(self)){
			throw noPuedeSubirExpedicion
		}else{
			vikingosQueLaIntegran.add(vikingo)
		}
	}
	method cantidadDeVikingos() = vikingosQueLaIntegran.size()
	
	method valeLaPena(){
		return puntosDeInteres.all{unPunto => unPunto.valeLaPena(self.cantidadDeVikingos())}
	}
	
	method realizar(){
		self.dividirBotin(vikingosQueLaIntegran.size())
		self.puntosDeInteres().forEach{unPunto => unPunto.serInvadido(self.cantidadDeVikingos())}
	}
	
	method dividirBotin(unosVikingos){
		var botinIndividual = self.botinTotal() / unosVikingos
		vikingosQueLaIntegran.forEach{unVikingo => unVikingo.recibirBotin(botinIndividual)}
		
	}
	
	method botinTotal() = puntosDeInteres.sum{unPunto => unPunto.botin(self.cantidadDeVikingos())}
}


object noPuedeSubirExpedicion inherits Exception {}