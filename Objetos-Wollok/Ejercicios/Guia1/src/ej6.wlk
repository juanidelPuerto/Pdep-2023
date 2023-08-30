object silla {
	var precio
	var estado = "noReservado"
	
	method precio(){
		return precio
	}
	
	method reservar(){
		estado = "reservado"
	}
}

object mesa{
	var precio
	var estado = "noReservado"
	
	method precio(){
		return precio
	}
	
	method reservar(){
		estado = "reservado"
	}
	
}

object  televisor{
	var precio
	var estado = "noReservado"
	
	method precio(){
		return precio
	}
	
	method reservar(){
		estado = "reservado"
	}
	
}

object cliente{
	var nombre
	var dni
	
	method reservar(unArticulo){
		unArticulo.reservar()
	}
}

object reserva{
	var cliente
	var articulo
	
	method articulo(){
		return articulo	
	}
	
	method cliente(unCliente){
		cliente = unCliente
	}
	
}

object venta{
	var cliente
	var cantCuotas
	var descuento
	var articulo
	var fechaEntrega
	var precioFinal
	
	method articulo(){
		return articulo	
	}
	
	
	method precioFinal(){
		precioFinal = self.articulo().precio() - descuento
	}
	
	method fechaEntrega(unaFecha){
		fechaEntrega = unaFecha
	}
	
	method cliente(unCliente){
		cliente = unCliente
	}
	
	method cantCuotas(cant){
		cantCuotas = cant
	}
	
	method articulo(unArticulo){
		articulo = unArticulo
	}
	
	method descuento(unDescuento){
		descuento = unDescuento
	}
}
