object selene {
    const property nombre = "selene"
    var energia = 35
    var poder = 60
    var luzLunar = false

    method energia() = energia
    method poder() = poder

    method alternar() {
        luzLunar = not luzLunar
    }

    method entrenar(){
        if (luzLunar)
            poder = poder * 2
        else
            energia = energia + 25
    }

}


object balthazar {
    const property nombre = "balthazar"
    var energia = 45
    var hechizoDanino = 0
    method energia() = energia
    method poder() = 0.max(35 - (hechizoDanino * 3))
    method entrenar() {
        energia = energia + 10
        hechizoDanino = hechizoDanino + 1
    }

}

object iris {
    const property nombre = "iris"
    var sanacion = 2
    method energia() = 80
    method poder() = 35
    method entrenar() {
        sanacion = sanacion + 1
    }
    method usarPoderSanacion() {
        if(sanacion.even()){
            escudo.mejorarResistencia(150)
            escudo.mejorarDurabilidad(100)
        } else {
            escudo.mejorarResistencia(80)
            escudo.mejorarDurabilidad(60 * sanacion)       
        }
    }
}

object escudo {
    var resistencia = 400
    var durabilidad = 600

    method resistencia() = resistencia
    method durabilidad() = durabilidad

    method mejorarResistencia(unValor) {
        resistencia = resistencia + unValor
    }

    method mejorarDurabilidad(unValor) {
        durabilidad = 1000.min(durabilidad + unValor)
    }

}

object aldric {
    const property nombre = "aldric"
    var energia = 65
    var poder = 15
    var property baston = bastoHielo

    method energia() = energia
    method poder()= poder
  
    method entrenar() {
        energia = energia + 20
        poder = poder + baston.poder()
    }

}

object bastoHielo{
    method poder() = 20
}

object bastoFuego {
    method poder() = 30
}