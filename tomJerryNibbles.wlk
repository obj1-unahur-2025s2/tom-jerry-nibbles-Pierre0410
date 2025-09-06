object tom {
    var energia = 50
    method comer(raton){
        energia += 12 + raton.peso()
    }
    method correr(metros){
        energia = energia - (metros / 2)
    }
    method velocidadMaxima(){
        return 5 + energia / 10
    } 
    method puedeCazar(metros){
        return energia > metros
    }
    method cazarRaton(raton, metros){
        if (self.puedeCazar(metros)){
            energia -= metros
            self.comer(raton)
        }
    }
    method cazarRatonAdulto(raton, metros){
        if (self.puedeCazar(metros) && not raton.esRatonBebe()){
            energia -= metros
            self.comer(raton)
        }
    }
}

object jerry {
    var edad = 2
    method peso() = edad * 20
    method cumplirAños(){
        edad += 1
    }
    method esRatonBebe(){
        return edad < 1
    }
}

object nibbles {
    var edad = 3
    method peso() = 35
    method cumplirAños(){
        edad += 1
    }
    method esRatonBebe(){
        return edad < 1
    }
}

// Inventar otro ratón
object otroRaton {
    var edad = 1
    method peso(){
      return edad * 20
    }
    method cumplirAños(){
      edad += 1
    }
    method esRatonBebe(){
        return edad < 1
    }
}