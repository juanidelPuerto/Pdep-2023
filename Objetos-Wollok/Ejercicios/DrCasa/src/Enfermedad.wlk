class Enfermedad {
	var cantidadCelulasAmenazadas

	method cantidadCelulasAmenazadas(){
		return cantidadCelulasAmenazadas
	}
	
	method atenuarseEn(unaCantidadDeCelulas){
		
	}	
	
	method atenuarsePara(unaPersona, unaDosis){
		self.atenuarseEn(unaDosis * 15)
		self.validarCuracion(unaPersona)
	}
	
	method validarCuracion(unaPersona){
		if (self.cantidadCelulasAmenazadas() == 0){
			unaPersona.curarseDe(self)
		}
	}
}

object muerte{
	method cantidadCelulasAmenzadas(){
		return 0
		}
		
	method atenuarsePara(unaPersona, unaDosis){
		}// No se atenua
		
	method afectarA(unaPersona){
		unaPersona.morir()
		}
	method esAgresivaPara(unaPersona){
		return true
		}
	}
	
	
	
	class HIV { 
		const autoinmune
		const infecciosa
		
		method cantidadCelulasAmenazadas(){
			return autoinmune.cantidadCelulasAmenazadas() + infecciosa.cantidadCelulasAmenazadas()
			}
		
		method atenuarsePara(unaPersona, unaDosis){
			infecciosa.atenuarsePara(unaPersona, unaDosis)
			autoinmune.atenuarsePara(unaPersona, unaDosis)
		}
		
		method afectarA(unaPersona){
			infeccisa.afectarA(unaPersona)
			autoinmune.afectarA(unaPersona)
		}
		
		method esAgresivaPara(unaPersona){
			return infecciosa.esAgresivaPara(unaPersona) && autoinmune.esAgresivaPara(unaPersona)
		}
	}


