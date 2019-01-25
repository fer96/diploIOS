//: Playground - noun: a place where people can play

import UIKit

class Alumno: CustomStringConvertible{
    var nombre: String = "nobody"
    var description: String {
        return "Yo soy \(nombre)"
    }
}
var luis = Alumno()
print(luis)

/*Sobre carga del operador == a traves de utilizar un protocolo "Equatable" para tener mejores practicas de programación, digamos tener más con mejor estructura el código*/
/*El protocolo "Codable" sirve perfecto para tarabajar conarchivos JSON*/
struct Empleado: Equatable, Comparable, CustomStringConvertible, Codable{
    var nombre: String
    var apellidos: String
    var edad: Int
    
    var description: String{
        return "\(nombre) \(edad)"
    }
    
    static func ==(lhs: Empleado, rhs: Empleado) -> Bool{
        return lhs.apellidos == rhs.apellidos && lhs.nombre == rhs.nombre
    }
    //metodod e comparable
    static func < (lhs: Empleado, rhs: Empleado) -> Bool {
        return lhs.edad < rhs.edad
    }
}
var godin = Empleado(nombre: "Juanin Juan", apellidos: "Carlos", edad: 33)
var godin2 = Empleado(nombre: "Pedro", apellidos: "Picapiedras", edad: 44)

if godin == godin2{
    print("Son iguales")
}
else{
    print("No son iguales")
}
print(godin < godin2)

var godin3 = Empleado(nombre: "Tulio", apellidos: "Triviño", edad: 10)
var godin4 = Empleado(nombre: "Tulio", apellidos: "Triviño", edad: 16)
var godin5 = Empleado(nombre: "Tulio", apellidos: "Triviño", edad: 60)

var empleados = [godin,godin2, godin3, godin4, godin5]
let empleadosOrdenados = empleados.sorted(by: <)
for empleado in empleadosOrdenados{
    print(empleado)
}

//MARK: JSON
//Ejemplo de Codable con json
let jsonEncoder = JSONEncoder()
//Si no se esta seguro de los resultados de una operacion "try?"
if let jsonData = try? jsonEncoder.encode(godin), let jsonString = String(data: jsonData, encoding: .utf8){
    print(jsonString)
}
//La parte contraria es jsonDecoder


//MARK: Creacion protocols
protocol NombreCompleto{
    var nombreCompleto: String{get}
    func sayMyName()
}

struct Persona: NombreCompleto{
    var nombre: String
    var apellidos: String
    
    var nombreCompleto: String{
        return "\(nombre) \(apellidos)"
    }
    func sayMyName() {
        print(nombreCompleto)
    }
}
var manuel = Persona(nombre: "Manuel", apellidos: "Manita santa")
manuel.sayMyName()
