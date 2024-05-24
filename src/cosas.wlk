
object heladera {
	method precio() = 200000 
	method esComida() = false 
	method esElectrodomestico() = true 	
}

object cama {
	method precio() = 80000 
	method esComida() = false 
	method esElectrodomestico() = false 	
}

object tiraDeAsado {
	method precio() = 3500 
	method esComida() = true 
	method esElectrodomestico() = false 	
}

object paqueteDeFideos {
	method precio() = 500 
	method esComida() = true 
	method esElectrodomestico() = false 	
}

object plancha {
	method precio() = 12000 
	method esComida() = false 
	method esElectrodomestico() = true 	
}

object kiloMila{
	method precio() = 2600
	method esComida() = true
	method esElectrodomestico() = false
}

object botellaSalsaTomate{
	method precio() = 900 
	method esComida() = true
	method esElectrodomestico() = false
}

object microondas{
	method precio() = 42000 
	method esComida() = false 
	method esElectrodomestico() = true 	
}

object kiloCebollas{
	method precio() = 250 
	method esComida() = true
	method esElectrodomestico() = false
}

object compu{
	method precio() = 500 * dolar.precioVenta()
	method esComida() = false 
	method esElectrodomestico() = true 	
}

object packComida{
	var property plato = paqueteDeFideos    // puede ser: paquete de fideos, tira de asado o milanesas
	var property salsa = kiloCebollas       // puede ser: kilo de cebolla o botella de salsa de tomates
	
	method precio() = (self.plato().precio()) + (self.salsa().precio()) 
	method esComida() = true
	method esElectrodomestico() = false
}

object dolar{
	
	var property precioVenta = 1000
}