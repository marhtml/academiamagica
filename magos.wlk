import academia.*

object selene {
  var nivelDeEnergia = 35
  var nivelDePoder = 60
  var luzLunar = false
  
  method alternar() {
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
  
  method nivelDePoder() {
    return nivelDePoder - (3 * hechizosDaninos)
  }
  
  method entrenar() {
    nivelDeEnergia += 10
    hechizosDaninos += 1
  }
}

object iris {
  const property nivelDeEnergia = 80
  var property nivelDePoder = 35
  var sanacion = 2
  
  method sanacion() = sanacion
  
  method entrenar() {
    sanacion += 1
  }
  
  method mejorarEscudo() {
    if (sanacion.even()) {
      escudoMagico.mejorarResistencia(150)
      escudoMagico.mejorarDurabilidad(100)
    } else {
      escudoMagico.mejorarResistencia(80)
      escudoMagico.mejorarDurabilidad(60 * sanacion)
    }
  }
}

object aldric {
  var nivelDePoder = 15
  var nivelDeEnergia = 65
  var property bastonActual = bastonDeHielo
  
  method entrenar() {
    nivelDeEnergia += 20
    self.aumentarNivelDePoder()
  }
  
  method aumentarNivelDePoder() {
    nivelDePoder += self.bastonActual().nivelDePoder()
  }
  
  method nivelDePoder() = nivelDePoder
  
  method nivelDeEnergia() = nivelDeEnergia
}

object bastonDeFuego {
  method nivelDePoder() = 30
}

object bastonDeHielo {
  method nivelDePoder() = 20
}

object escudoMagico {
  var resistencia = 400
  var durabilidad = 600
  
  method mejorarResistencia(unValor) {
    resistencia += unValor
  }

  method mejorarDurabilidad(unValor) {
    durabilidad = 1000.min(durabilidad + unValor)
  }

  method resistencia() = resistencia

  method durabilidad() = durabilidad
}