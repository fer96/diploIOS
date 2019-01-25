//: Playground - noun: a place where people can play

import UIKit

//MARK: Apuntadores
var valor = 5
func cambiaValor(param: inout Int) -> Int{
    param += 1
    return param
}
print(cambiaValor(param: &valor))

//MARK: Estructuras
//las struct son tipos de datos por valor por eso se copian los valores entre structuras
//las propiedades de las struct no pueden ser cambiadas de valor dentro de la misma struct
struct Alumno{
    var nombre: String
    var edad: Int
    static var salud: String = "Estoy sanito"
    var carrera: String{
        //willSet se activa cuando se quiere cambiar un valor
        //la variable 'newValue' es exclusiva de willSet
        willSet{
            print("Este será el nuevo valor \(newValue)")
        }
        //didSet se activa antes de cambie el valor
        //oldValue es propia de didSet
        didSet{
            print("Este fue el valor cambiado \(oldValue)")
        }
    }
    
    //mutating habilita a la funcion para poder acceder a la variable
    mutating func cambiaValor(){
        nombre = "nobody"
    }
    
    
    //inicializador "personalizado"
    init(nombre: String){
        self.nombre = nombre
        self.edad = 0
        self.carrera = "Ing. Computacion"
    }
    init(edad: Int){
        self.nombre = "nombre"
        self.edad = edad
        self.carrera = "none"
    }
    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
        self.carrera = "none"
    }
}
var luis = Alumno(nombre: "Luis")
var pedro =  luis
pedro.nombre = "pedro"
dump(luis)
dump(pedro)
var fer = Alumno(nombre: "FER", edad: 22)
dump(fer)
//manejo de observadores (son propiedades calculadas)
var pepe = Alumno(nombre: "Pepe")
pepe.carrera = "Lic Info"
pepe.carrera = "Arquitectura"
//atributos estaticos
Alumno.salud

//MARK: class
//las clases son colecciones de datos por referencia por lo que si se hace una copia se copia la direccion de memoria
class Profesor{
    var nombre: String = "none"
}
var german = Profesor()
var beto = german
beto.nombre = "Beto"
dump(german)

class AlumoC{
    let nombre: String
    init(nombre: String) {
        self.nombre = nombre
    }
    func estudiar(){
        print("Alumno estudiando")
    }
}
let josue = AlumoC(nombre: "Josue")
josue.estudiar()
//solo la primer clase en despues de ':' es herencia las que sigan despues de las ',' son PROTOCOLOS
class Ingeniero: AlumoC{
    let promedio: Double
    //constructor con sobrecarga puede ser con override o sin override
    override init(nombre: String) {
        self.promedio = 9.0
        super.init(nombre: nombre)
    }
    //sobreescritura
    override func estudiar() {
        print("Los ingenieros estudian perro")
    }
}
let juan = Ingeniero(nombre: "Juan")
juan.estudiar()
