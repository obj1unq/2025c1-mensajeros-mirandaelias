//Paquete 
object paquete {
    var estaPago = false

    method pagar() {
    estaPago = true
    }

    method estaPagado() = estaPago //getter

    method puedeSerLlevado(
    mensajero,
    destino
    ) = self.estaPagado() && destino.puedePasar(mensajero)

} //Destino 

object puenteBrooklyn {
    method puedePasar(mensajero) = mensajero.pesoTotal() <= 1000
}

object laMatrix {
    method puedePasar(mensajero) = mensajero.puedeLlamar()
} //Mensajeros 

object chuckNorris {
    method pesoTotal() = 900

    method puedeLlamar() = true
  //    method puedeLlevarPaquete() = paquete.estaPagado()
}

object neo {
    var tieneCredito = false

    method pesoTotal() = 0

    method puedeLlamar() = tieneCredito

    method cargarCredito() {
    tieneCredito = true
    }

    method tieneCredito() = tieneCredito
}

object lincolnHawk {
    var pesoPropio = 80
    var vehiculo = camion

    method pesoPropio() = pesoPropio //Getter

    method cambiarPeso(_cambiarPeso) {
    //Setter
    pesoPropio = _cambiarPeso
    }

    method cambiarVehiculoA(_cambiarVehiculoA) {
    vehiculo = _cambiarVehiculoA
    }

    method pesoTotal() = pesoPropio + vehiculo.peso()

    method vehiculoEnUso() = vehiculo //Getter

    method puedeLlamar() = false
  //    method puedeLlevarPaquete() = paquete.estaPagado()
}

object camion {
    var cantAcoplados = 0

    method peso() = 500 + (500 * cantAcoplados)

    method acoplados() = cantAcoplados

    method agregarAcoplados(cant) {
    cantAcoplados += cant
    }
}

object bicicleta {
    method peso() = 10
}