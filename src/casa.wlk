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
}
