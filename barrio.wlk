import elementos.*

class Barrios {
    var property elementos = [] 
    method esCopado() = self.elementosBuenos() > self.elementosMalos()

    method elementosBuenos() = elementos.count({elementos => elementos.esBueno()}) 
    method elementosMalos() = elementos.count({elementos => not elementos.esBueno()}) 
  
}
 