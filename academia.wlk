import magos.*
object academia {
    const property equipo = []
    const property candidatos = []

    method evaluar(unMago) {
        return unMago.energia() > 40 
        and unMago.poder() >= 30
    }

    method unirse(unMago) {
        if (self.evaluar(unMago))
            equipo.add(unMago)
        else
            candidatos.add(unMago)
    }

    method entrenar() {
        equipo.forEach({ mago => mago.entrenar()})
    }

    method volverAEvaluar() {
        const pasaron = candidatos.filter({
            candidato => self.evaluar(candidato)
        })
        equipo.addAll(pasaron)
        candidatos.removeAll(pasaron)
    }

    method poderTotal() {
        return equipo.sum( { mago => mago.poder()})
    }

    method enCondicionesOptimas() {
        return not equipo.any ({mago=> mago.energia() < 45})
    }

    method deltaEnergia() {
        const masPoderoso = equipo.max({mago=>mago.poder()})
        const menosPoderoso = equipo.min( { mago=>mago.poder()})
        return (masPoderoso.energia() - menosPoderoso.energia()).abs()
    }

    method nombres(){
        return equipo.filter({mago=>mago.energia()>90})
            .map({mago=>mago.nombre()})
    }

}