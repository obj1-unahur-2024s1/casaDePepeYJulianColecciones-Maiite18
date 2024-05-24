<<<<<<< HEAD
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
=======
import objetos.*

object casa{
	
	const cosasCompradas = []
	
	method comprar(cosa)= cosasCompradas.add(cosa)
	
	method cantidadDeCosasCompradas() = cosasCompradas.size()
	
	method tieneComida() = cosasCompradas.any({g=>g.esComida()})
	
	method vieneDeEquiparse() {
		const ultimaCompra = cosasCompradas.last()
		
		return ultimaCompra.esElectrodomestico() or ultimaCompra.precio() > 50000
	} 
	
	method esDerrochona() = cosasCompradas.sum({g=>g.precio()}) > 90000
	
	method compraMasCara() = cosasCompradas.max({g=>g.precio()})
	
	method electrodomesticosComprados() = cosasCompradas.filter({g=>g.esElectrodomestico()})
	
	method malaEpoca() = cosasCompradas.all({g=>g.esComida()})
	
	method queFaltaComprar(lista) = lista.asSet().diference(cosasCompradas)
	
	method faltaComida() = 00
>>>>>>> 579097cc802ea6fa9960790b3a9eb451cf76ae97
}
