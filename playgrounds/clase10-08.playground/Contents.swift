
//: Playground - noun: a place where people can play

import UIKit

let str : String
var more = "Mas instrucciones"
str = "NO existe problema por que no se le habia asignado un valor"
//en terminos de desempeño obviamente es mejor utilizar constantes

//recordnado se permite la concatenacion y la interpolacion a partir de simbolos de escape
more = more + " cadena concatenada"
print(more)
more = "Cadena interpolada  \(more)"
print(more)

//palabra reservada para las fucniones es "func" se debe respetar el camelCase
//Swift se debe pasar etiquetas de los parametros en las firmas de las funciones, si se usan las etiquetas se tendra que poner la etiqueta mas el valor que estará recibiendo la función
func helloName(name: String, lastName: String) -> String{
    return ("Hello " + name + " " + lastName)
}

print(helloName(name: "fer", lastName: "delarosa"))

//se puede utilizar etiqutas interiores y exteriores o simplemente la interior
func printHelloTo(using name: String){
    print("Hello " + name)
}

//se recomienda utilizar la notacion de tipo de variable para evitar errores al momento de asignar valores a las variables
//Notacion de tipo es var num: Int, Inferencia de valor es var num


//Tipos de datos no definidos en la bibloteca standar
let date = Date()

var fecha = Date() + 969000
print(fecha)
//Se puede modificarl el valor de la fecha con segundos

//Swift tiene 3 estructuras basicas los OBJETOS, las ESTRUCTURAS, y los NUMERADORES. Estan difieren de "poder y capacidades" en ese orden descendente


//Propieades y metodos de  unainstancia, es con un punto al final de la instancia
var introduccion = "Era una vez"
print(introduccion)

introduccion.append(" en un bosque")
print(introduccion)
//Para ver los metodos disponibles de todos los objetos solo queda irse a la documentacion oficial de swift reviasr que esa documentacion sea la que se esta manejando para la version de swift

introduccion.hasPrefix("Era ")

//Colecciones
//tuplas
let devices = ["iphone", "ipad", "ipod", "imac"]
print(devices[2])
//arreglos
var arr = ["cadenas"]
arr.append("perapod")
print(arr)

//ciclos
//for
for dev in devices{
    print(dev)
}

//algunos otros metodos de los arreglos
arr.insert("josue", at: 1)
print(arr)
arr.count
arr.reverse()
print(arr)


//ESTRUCTURAS
struct Song{
    let tilte: String
    let artist: String
    let duration: Int
}
let cancion = Song(tilte: "Roots Rock Reggae", artist: "Bob Marley & The Wailers", duration: 3)
//El constructor de las estructuras es generado automaticamente por swift
print(cancion)
//una struct es bastante util para tener un conjunto de datos, simple y sencillo el cual seria desperdiciado si se emplea con una clase
//"Esteroides de las estructuras"
//Propiedades calculadas PC
struct SongPC{
    let title: String
    let artist: String
    let duration: Int
    
    var formattedDuration: String{
        let minutes = duration / 60
        //El operador (%) de modulo proporciona el resto
        let seconds = duration % 60
        return "\(minutes)m \(seconds)s"
    }
}
let can = SongPC(title: "One Love", artist: "Bob Marley", duration: 215)
print(can.formattedDuration)
//usualmete una propiedad calculada se emplean para obtener informacion de la misma estructura pero con algun formato específico
//otro ejemplo de propiedades calculadas
struct Rectangle{
    let heigh: Int
    let width: Int
    var area: Int{
        return heigh * width
    }
    func biggerThan(rectangle: Rectangle) -> Bool{
        return area > rectangle.area
    }
}
let rec = Rectangle(heigh: 9, width: 5)
print(rec)
let rec2 = Rectangle(heigh: 4, width: 11)
print(rec.biggerThan(rectangle: rec2))
