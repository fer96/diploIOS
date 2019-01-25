//: [Previous](@previous)

import Foundation

//MARK: DICCIONARIOS
    //inicializadores
var scores = ["Pumas": 10, "CA": 10, "AME": 8]
var otrosScores = [String: Int]()
var otraFormaDic = Dictionary<String, Int>()
var ultimaForma : [String: Int] = [:]
    //modificar valores
scores["Pumas"] = 13
scores.updateValue(11, forKey: "CA")
    //oldValue devuelve el valor antes de actualizar
let oldValue = scores.updateValue(9, forKey: "AME")
    //borrar elemnetos
//scores["CA"] = nil
scores.removeValue(forKey: "CA")
    //obtencion de llave valor
let equipos = Array(scores.keys)
let punto = Array(scores.values)
    //Optinal blanding solo se crea la variable si se cumple la condicion y solo existe dentro del if
if let myScore = scores["Pumas"]{
    print(myScore)
}

//: [Next](@next)
