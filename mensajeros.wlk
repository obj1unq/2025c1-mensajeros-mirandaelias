
//Paquete 
object paquete {
    var estaPago = false

    method pagar() {
    estaPago = true
}

    method estaPagado() = estaPago//getter
}
 //Destino 

object puenteBrooklyn {
    method puedePasar(mensajero) = mensajero.pesoTotal() <= 1000
}

object laMatrix {
    method puedePasar(mensajero) = mensajero.puedeLlamar()
} //Mensajeros 

object chuckNorris {
    method pesoTotal() = 900

    method puedeLlamar() = true

    method puedeLlevarPaquete() = paquete.estaPagado()
}

object neo {
    var tieneCredito = false
    method pesoTotal() = 0

    method puedeLlamar() = tieneCredito
    
    method cargarCredito(){
        tieneCredito = true
    }
    
    method tieneCredito() {//getter
        return tieneCredito
    }

    method puedeLlevarPaquete() = paquete.estaPagado()
}

object lincolnHawk {
    var pesoPropio = 80 
    var vehiculo = "bicicleta"
    var cantAcoplados = 0

    method pesoPropio() = pesoPropio //Getter

    method cambiarPeso(_cambiarPeso) { //Setter
    pesoPropio = _cambiarPeso
    }

    
    method pesoTotal() {
        if (vehiculo == "bicicleta"){
            return pesoPropio + 10
        }else{
            return pesoPropio + 500 + (500 * cantAcoplados)
        }
    }

    method usarBici() {
        vehiculo = "bicicleta"
    }

    method usarCamion(acoplados) {
        vehiculo = "Camion"
        cantAcoplados = acoplados
    
    }


    method vehiculoEnUso() = vehiculo //Getter

    method puedeLlamar() = false 

    method puedeLlevarPaquete() = paquete.estaPagado()
}