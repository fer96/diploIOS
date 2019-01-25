//: [Previous](@previous)

import Foundation

//MARK: COLECCIONES

    //definicion con tipo de dato
var nombres: [String] = ["Luis", "Fer", "Uriel"]
    //definicion con inferencia
var otrosNombres = ["Luis", "Fer", "Uriel"]
    //definicion con tipo de datos y vacio
var otraForma: [String] = []
var otraFormaMas: Array<String> = [] //los array son estructuras genericas
var unaMas = [Int]()

var numeros = [4,5,6]
if numeros.contains(5){
    print("Contiene el elemento 5")
}

var miArray = [Int](repeating: 0, count: 100)
/*miArray.count
miArray.isEmpty
miArray.append(100)
miArray[1] = 4
miArray += [88, 93] //agrega 88 y 93 al final
miArray.insert(96, at: 0)
miArray.sort()
miArray.remove(at: 100)
miArray.removeLast()
miArray.removeAll()
dump(miArray)
*/

var array1 = [1,2,3]
var array2 = [4,5,6]
miArray = array1 + array2 //concatenacion

let containerArray = [array1, array2]



//: [Next](@next)
