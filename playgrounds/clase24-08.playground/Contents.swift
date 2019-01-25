//: Playground - noun: a place where people can play

import UIKit

//El marcado espacial a los tipos de datos "?" permite asignar valores nulos lo cual vuelve a las variables o constantes como opcionales
//Se suele implementar cuando por alguna razón en algun momento del ciclo de vida de la app este variable o constante tiene que ser nulo
var str: String? = nil
//Para indicarle a swift que si tiene un valor y no es un dato nulo se le adjunta un "!"
str = "Ya no es una valor nulo"
print(str!)
//Esta es una manera segura de manejar un opcional
if let unwrappedStr = str{
    print(unwrappedStr)
}

//Los casteos regresan un opcional por si durante el casteo algo va mal
let string = "123"
//Al utilizar el "!" se corren riesgos de que un valor sea nulo y pueda causar errores
let possibleNumber = Int(string)!

struct Toddler{
    var name: String
    var monthsOld: Int
    //Hacer un inicializador opcional se le conoce como inicializador falible
    init? (name: String, monthsOld: Int) {
        if monthsOld > 12{
            return nil
        }
        else{
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}
//Si se requiere que el inicializador tenga más "funcionalidades" se debe crear un inicializador personalizado
//Por ejemplo tener un inicializador que sea capaz de "crear" structs nulos, por lo que no los crea
let myBoy = Toddler(name: "Fer", monthsOld: 12)
//La instancia de "myBoy" se crea como opcional debido al inicializador falible
//Repito esta es la forma segura de desenvolver un opcinal para poder utilizarlos de forma segura
if let unwrappedToddler = myBoy{
    print(unwrappedToddler.name)
}
else{
    print("No se pudo instanciar la estructura")
}

struct Person{
    var age: Int
    var residenece: Residence?
}
struct Residence{
    var address: Address?
}
struct Address{
    var buildingNumber: String?
    var streetName: String?
    var apertmentNumber: String?
}

let persona = Person(age: 10, residenece: Residence(address: Address(buildingNumber: "6", streetName: "St. River", apertmentNumber: "9")))
if let theResidence = persona.residenece{
    if let theAddress = theResidence.address{
        if let theApertmentNumber = theAddress.apertmentNumber{
            print("He/She lives in apartment number \(theApertmentNumber).")
        }
    }
}

//Encadenamiento de opcionales, ayuda a simplificar la validacion de hace un momento
if let theApartmentNumber2 = persona.residenece?.address?.apertmentNumber{
    print("He/She lives in apartment number \(theApartmentNumber2).")
}

//Forma IMPLICITA de desenvolver un opcional -> "!"
//Esta forma solo se utiliza cuando se esta completamente seguro que no se estará manejando un valor nulo

//Type casting
//se hace el casteo con la estructura padre y se emplea con as?  como si fuera u banding?
//if let dog = as? Dog talque Dog es una subclase "de Pet"
//if pet = is Dog solo pregunta si pet pertenece a la clase Dog

//MARK: Type ANY
var items: [Any] = [5, "Cinco", 6.7]
if let firstItem = items[0] as? Int{
    print(firstItem + 4)
}

//Algo importante de poder castear o utilizar tipos de datos en ANY o tipos de clases o struct es que nos ayudan a implementar código de forma más genérica


//MARK: GUARD
//Es una forma de deterner la ejecucion de un bloque de sentancia de flujo lo cual nos ahorra procesamiento
//Tienen la sig sintaxis
/*
 guard condition else{
  false: execute some code
  return
 }
 true: continue with code
*/
//Los guards pueden ser utilies para desenvolver opcionales

