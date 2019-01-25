//: Playground - noun: a place where people can play

import UIKit

//MARK: Closures 2
let sumClosure = {(numbers: [Int]) -> Int in
    var total = 0
    for number in numbers{
        total = total + number
    }
    return total
}

let sum = sumClosure([1,2,3,4,5])
print(sum)

let printClosure = { ()-> Void in
    print("Este closure no recibe nada y no devuelve nada")
}

let printClosure2 = {(cadena: String) -> Void in
    print(cadena)
}

let printClosure3 = {() -> Int in
    return 3
}

var letras = ["a","b","w","x","z"]

letras.sorted{(letra1, letra2) -> Bool in
    return letra1 > letra2
}

letras.sorted{
    $0 > $1
}

let nombres = ["Fer", "juan", "pepe"]
let nombreCompleto = nombres.map{(nombre) -> String in
    return nombre + " Swift"
}
let nombreCompleto2 = nombres.map{ $0 + " Swift" }

let numbers = [5,6,2,99,10]
let numbersLessTen = numbers.filter{(number) -> Bool in
    return number < 10
}
let numbersLessTen2 = numbers.filter{ $0 < 10}
