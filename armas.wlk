class ArmaDeFilo {
  const property longitud 
  const property filo
  method ataque() = filo * longitud 
  
}
class ArmaContundente {
  const property peso 
  method ataque() = peso  
  
}

object casco {
  method defensa(unLuchador) = 10
}
object escudo {
  method defensa(unLuchador){
    return 5 + unLuchador.destreza() * 0.1
  }
  
}

