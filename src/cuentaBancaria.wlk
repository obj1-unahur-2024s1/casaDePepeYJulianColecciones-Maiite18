object cuentaCorriente {
	var saldo = 0
	
	method depositar(monto){
		saldo += monto
	}
	method extraer(monto){
		saldo -= monto
		
	}
	method saldo() = saldo 
	
}

object cuentaConGastos{
	var saldo = 0
	
	method depositar(monto){
		saldo += (monto - 200)
	}
	
	method extraer(monto){
		if (monto < 10000)
			saldo -= (monto + 200)
		else
			saldo -= (monto + (monto * 0.2))
		
	}
	
	method saldo() = saldo 
	
}

object cuentaCombinada {
	const cuentaPrimaria = cuentaCorriente
	const cuentaSecundaria = cuentaConGastos
	
	method depositar(monto){
		cuentaPrimaria.depositar(monto)
	}
	method extraer(monto){
		if (cuentaPrimaria.saldo() > monto)
			cuentaPrimaria.extraer(monto)
		else
			cuentaSecundaria.extraer(monto)
		
	}
	method saldo() = cuentaPrimaria.saldo() + cuentaSecundaria.saldo()
	
}
