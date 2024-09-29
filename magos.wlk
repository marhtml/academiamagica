import academia.*

object selene {
  var nivelDeEnergia = 35
  var nivelDePoder = 60
  var luzLunar = true
  
  method cambiarLuzLunar() {
    luzLunar = not luzLunar
  }
  
  method luzLunar() = luzLunar
  
  method nivelDeEnergia() {
    if (not self.luzLunar()) {
      return nivelDeEnergia + 25
    }
    return nivelDeEnergia
  }
  
  method nivelDePoder() {
    if (self.luzLunar()) {
      return 2 * nivelDePoder
    }
    return nivelDePoder
  }
  
  method entrenar() {
    
  }
}

object balthazar {
  var nivelDeEnergia = 45
  var nivelDePoder = 35
  var hechizosDaninos = 0
  
  method hechizosDaninos() = hechizosDaninos
  
  method nivelDeEnergia() = nivelDeEnergia
  
  method nivelDePoder() = (nivelDePoder - hechizosDaninos) * 3
  
  method entrenar() {
    nivelDeEnergia + 10
    hechizosDaninos + 1
  }
}

object iris {
  const property nivelDeEnergia = 80
  var property nivelDePoder = 35
  var sanacion = 2
  
  method sanacion() = sanacion
  
  method entrenar() {
    sanacion + 1
  }
  
  method mejorarEscudo() {
    if (sanacion.isEven()) {
      escudoMagico.resistencia() + 150
      escudoMagico.durabilidad() + 100
    } else {
      sanacion * (escudoMagico.resistencia() + 80)
      sanacion * (escudoMagico.durabilidad() + 60)
    }
  }
}

object aldric {
  var nivelDePoder = 15
  var nivelDeEnergia = 65
  var bastonActual = bastonDeHielo
  
  method cambiarBaston(baston) {
    bastonActual = baston
  }
  
  method bastonActual() = bastonActual
  
  method entrenar() {
    nivelDeEnergia + 20
    self.aumentarNivelDePoder()
  }
  
  method aumentarNivelDePoder() {
    if (self.bastonActual() == bastonDeFuego) {
      return nivelDePoder + 30
    }
    return nivelDePoder + 20
  }
  
  method nivelDePoder() = nivelDePoder
  
  method nivelDeEnergia() = nivelDeEnergia
}

object bastonDeFuego {
  
}

object bastonDeHielo {
  
}