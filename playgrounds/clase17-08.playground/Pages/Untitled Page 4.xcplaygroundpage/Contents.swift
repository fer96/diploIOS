//: [Previous](@previous)

import Foundation

//MARK: CILCOS DE REPETICION

//esta sintaxis solo es de un limite superior a un limite inferior
for index in 1...5{
    print(index)
}
for index in 1..<5{
    print(index)
}
//stride nos permite crear secuencias numericas
for index in stride(from: 10, to: 1, by: -1){
    print(index)
}
//ejecucion del for sin guardar la iteraciones del index
for _ in 1...5{
    print("Iteraciones")
}
//en colecciones si aplica el reversed()
for letra in "Hola mundo".reversed(){
    print(letra)
}
var nombres = ["hugo", "paco", "luis"]
for nombre in nombres{
    print(nombre)
}
//accediendo a la posisciond del elemento
for (index, nombre) in nombres.enumerated(){
    print(index, nombre)
}

//WHILE
var i = 0
while i < 10{
    i += 1
    print(i)
}

//: [Next](@next)
