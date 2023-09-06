object olivia {
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion () = gradoDeConcentracion
	
	method recibirMasajes() {gradoDeConcentracion += 3}
	
	method discutir() {gradoDeConcentracion = 0.max(gradoDeConcentracion - 1) }
	
	method baniarseConVapor() {}
}

object bruno {
	var esFeliz = true
	var tieneSed = false
	var peso =  55000
	
	method esFeliz() = esFeliz
	
	method tieneSed() = tieneSed
	
	method peso() = peso

	method recibirMasajes() {esFeliz = true}
	
	method baniarseConVapor() {
		
		peso = 0.max(peso-500)
		tieneSed = true
	}
	
	method tomarAgua() {tieneSed = false}
	
	method comerFideos() {
		peso += 250 
		tieneSed = true
	}
	
	method correr() {peso -= 300}
	
	method verNoticiero() {esFeliz = false}
	
	method estaPerfecto() {
		return self.esFeliz() and not self.tieneSed() and self.peso().between(50000, 70000)
	}
	
	method mediodiaEnCasa() {
		self.comerFideos()
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro {
	var nivelDeContractura = 0
	var tienePielGrasosa = false
	
	method nivelDeContractura() = nivelDeContractura
	
	method tienePielGrasosa() = tienePielGrasosa
	
	method recibirMasajes() {(self.nivelDeContractura() - 2).max(0)}
	
	method baniarseConVapor() {tienePielGrasosa = false}
	
	method comerBicMac() {tienePielGrasosa = true}
	
	method bajarALaFosa() {tienePielGrasosa = true 
		nivelDeContractura += 1
	}
	method jugarPaddle() {nivelDeContractura += 3}
	
	method diaDeTrabajo() {
		self.bajarALaFosa()
		self.comerBicMac()
		self.bajarALaFosa()
	}
}