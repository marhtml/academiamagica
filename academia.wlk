import magos.*

object academia {
  const property candidatos = []
  const property alumnos = []
  
  method unirse(alumno) {
    if (self.evaluacion(alumno)) alumnos.add(alumno) else candidatos.add(alumno)
  }
  
  method evaluacion(
    alumno
  ) = (alumno.nivelDeEnergia() > 40) and (alumno.nivelDePoder() >= 30)
  
  method entrenarMagos() {
    alumnos.forEach({ a => a.entrenar() })
  }
  
  method poderTotal() = alumnos.sum({ a => a.nivelDePoder() })
  
  method estaEnCondicion() = alumnos.all({ a => a.nivelDeEnergia() > 45 })
  
  method elMasPoderoso() = alumnos.max({ a => a.nivelDePoder() })
  
  method elMenosPoderoso() = alumnos.min({ a => a.nivelDePoder() })
  
  method deltaDeEnergia() = self.elMasPoderoso().nivelDePoder() - self.elMenosPoderoso().nivelDePoder()
  
  method energiaSuperiorA90() = alumnos.filter({ a => a.nivelDeEnergia() > 90 })
}

object escudoMagico {
  var property resistencia = 400
  var durabilidad = 600
  
  method durabilidad() = 1000.min(durabilidad)
}