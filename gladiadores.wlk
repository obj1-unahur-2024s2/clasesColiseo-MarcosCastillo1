import armas.*

class Mirmillones {
  var vida = 100  
  var property armadura 
  const property arma 
  
  var property fuerza 
  method destreza() = 15   
  method defensa() = armadura.defensa(self) + self.destreza()
  method vida() = vida 
  method poderDeAtaque() = fuerza + arma.ataque() 
  method atacar(unGladiador) {
   unGladiador.recibirAtaque((self.poderDeAtaque() - unGladiador.defensa()).abs())
    
  }
  method recibirAtaque(unValor) {
    vida = 0.max(vida - unValor)
    
  }
  method pelear(unGladiador) {
    self.atacar(unGladiador)
    unGladiador.atacar(self)
    
  }
  
}


class Dimachaerus {
    var vida = 100
    const property arma =[] 
    var property destreza 
    
    method fuerza() = 10 
    method vida() = vida 
    method poderDeAtaque() = self.fuerza() + arma.sum({arma => arma.ataque()})
    method atacar(unGladiador) {
   unGladiador.recibirAtaque(0.max(self.poderDeAtaque() - unGladiador.defensa()))
   destreza = destreza + 1 
    
  }
  method recibirAtaque(unValor) {
    vida = 0.max(vida - unValor)
    
  }
  
  method defensa() = destreza * 0.5
  
  method pelear(unGladiador) {
    self.atacar(unGladiador)
    unGladiador.atacar(self)
    
  }
  
}
