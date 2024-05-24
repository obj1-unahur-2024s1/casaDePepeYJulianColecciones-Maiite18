import cosas.* 
import cuentaBancaria.* 

object casaDePepeYJulian {
	var property cuentaEnUso = cuentaCorriente
	const cosas = []
	
	method gastar(monto) {
		cuentaEnUso.extraer(monto)
		
	} 
	
	method dineroDisponible() = cuentaEnUso.saldo()
	
	method comprar(cosa){
		cosas.add(cosa)
		cuentaEnUso.extraer(cosa.precio())
	}
	
	method cantidadDeCosasCompradas() = cosas.size()
	
	method tieneComida() = cosas.any({x => x.esComida()})
	
	method vieneDeEquiparse() = cosas.last().esElectrodomestico() or cosas.last().precio() > 50000
	
	method esDerrochona() = cosas.sum({x => x.precio()}) >= 90000
	
	method compraMasCara() = cosas.max({x=>x.precio()})
	
	method electrodomesticosComprados() = cosas.filter({x=>x.esElectrodomestico()})
	
	method malaEpoca() = cosas.all({x=>x.esComida()})
	
	method queFaltaComprar(lista)= lista.asSet().difference(cosas.asSet())
	
	method faltaComida()= cosas.filter({x=>x.esComida()}).size() < 2 
}
