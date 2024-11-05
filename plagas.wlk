class Plagas{
    var property  poblacion
    method puedeTransmitirEnfermedades() = poblacion >= 10 
    method efectoEnLaPlaga(){
        poblacion = poblacion + poblacion * 0.1 }
      
}

class Cucarachas inherits Plagas {
    var property pesoPromedio 
    method nivelDeDanio() = poblacion /2
    override method puedeTransmitirEnfermedades()= super() and self.pesoPromedio() >= 10 
    override method efectoEnLaPlaga(){
        super()
        pesoPromedio = pesoPromedio +2

    }
}

class Pulgas inherits Plagas {
    method nivelDeDanio() = poblacion *2 

  
}

class Garrapatas inherits Pulgas {
    
    override method efectoEnLaPlaga(){
    poblacion = poblacion + poblacion * 0.2    
    } 
}


class Mosquitos inherits Plagas {
    method nivelDeDanio() = poblacion 
    override method puedeTransmitirEnfermedades()= super() and poblacion % 3 == 0
  
}