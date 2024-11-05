import plagas.*

class Hogar {
    var property nivelDeMugre 
    const property confortQueOfrece
    method esBueno() = nivelDeMugre <= confortQueOfrece /2   
    method recibirAtaque(unaPlaga){
        nivelDeMugre = nivelDeMugre + unaPlaga.nivelDeDanio()
        unaPlaga.efectoEnLaPlaga()

    } 
}

class Huerta {
    var property capacidadDeProduccion 
    var property nivelDeProduccion
    method esBueno() = capacidadDeProduccion > nivelDeProduccion   
     method recibirAtaque(unaPlaga){
        capacidadDeProduccion = 0.max(capacidadDeProduccion - unaPlaga.nivelDeDanio() * 0.1)
        if(unaPlaga.puedeTransmitirEnfermedades()){capacidadDeProduccion = 0.max(capacidadDeProduccion -10)}
        unaPlaga.efectoEnLaPlaga()

     }
}

class Mascota {
    var property nivelDeSalud 
    method esBueno() = nivelDeSalud > 250  

    method recibirAtaque(unaPlaga) {
        if(unaPlaga.puedeTransmitirEnfermedades()){nivelDeSalud = nivelDeSalud - unaPlaga.nivelDeDanio()}
        unaPlaga.efectoEnLaPlaga()
    }
  
}

