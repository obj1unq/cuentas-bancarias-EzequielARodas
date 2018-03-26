
object cuentaDePepe {
	var saldo = 0
	method saldo() = saldo
	
	method depositar(monto) { saldo += monto } 

	method extraer(monto) { saldo -= monto }
}

object cuentaDeJulian {
	var saldo = 0
	method saldo() = saldo
	
	method depositar(monto) {
		saldo=embargo.depositar(self,monto)
	} 

	method extraer(monto) {
		saldo = extraccion.extraer(self,monto)
	}
	

}

object embargo {
	var porcentajeDeDescuento = 0.2
	
	method depositar(usuario,monto){
		return usuario.saldo() + (monto - (monto*porcentajeDeDescuento))		
	}
	
}

object extraccion {
		
	method extraer(usuario,monto){
		if (usuario.saldo()<0)
			return  usuario.saldo()-monto
		else 
			return  usuario.saldo() - (monto + self.porcentajeFijo())
	}
	
	method porcentajeFijo(){
		return 5
	}
}
