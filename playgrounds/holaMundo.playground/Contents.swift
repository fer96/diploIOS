//: Playground - noun: a place where people can play
import UIKit

//var para indicar que es un tipo de dato variable
var cadena="Hola"
type(of: cadena)
cadena="Hello"

//let par indicar que es una variable que no va cambiar su valor en tiempo de ejecucuion
let saludo="que onda"
print(saludo)
//saludo="Como estas" esto no se puede hacer

//Swift es un lenguaje compilado
//Se recomienda que se configure el compilado de forma manual para evitar que se trabe la aplicación
//se tiene inferencia de tipo de dato

//Swift tiene tipado seguro, lo que significa que esto no se puede hacer
//cadena=9

//en swift todo es un objeto
"alumnos".count
//no es un arreglo es una coleccion

//comentarios cortos con doble diagonal
/*Comentarios largos con barra y asterisco */

//dump() nos da informacio de un objeto
dump(saludo)

//se tienen las operaciones aritmeticas BINARIOS que hay en todos los lenguajes de programacion
// + - * / %
3/2

//tipos de datos básicos
/*
 String
 Int
 Double (todo numero con decimales por default es double) [mayor mantiza, mayor cantidad de numeros decimales]
 Float
 Bool
 */

var num=5/4
type(of: num)
//sobrecarga de operadores un operador puede soportar distintas operaciones int + int, float + float, string + string

/*
 Operadores de corrimiento
 Shift left <<
 Shift right >>
 */
1<<3 //mueve 1 bit 3 lugares a la izq
1>>3 //mueve 1 bit 3 lugares a la der

//raices
(2.0).squareRoot()

//Declaracion de variables de forma completa
var numero : Int = 3
/*Reglas de nombramiento de variables
 si es una variable normal en minusculas
 si es un objeto en mayusculas la primer letra
 se recomienda utilizar camel notacion
 laCasaDeJuanito() se identifica una funcion
 los nombres de funciones, clases, estructuras deben ser los más descriptivos posibles
 */

//swift soporta UNICODE por lo que soporta canjis, emojis, etc que sea de UNICODE
var sonrie="😛"
print(sonrie)
//se puede nombrar variables con emojis o nombres de funciones pero eso no se hace compa

//forma de incrementar NO EXISTE EL ++
var contador : Int = 0
contador += 1
//forma de decrementar NO EXISTE EL -
contador -= 1

//Conversion de tipos de datos
var entero:Int = 0
var decimal:Float = 1.0
entero=Int(decimal)

//String contra Caracteres
var letra="a" //por default lo va asignar como string
var caracter : Character = "a" //se debe especificar que es caracter

//Concatenacion de cadenas
var mensaje:String = "Hola" + "Mundo"
var extra:String = "LeL"
print(mensaje + extra)

//Interpolacion
mensaje = "Hola yo me llamo \(extra)"
print(mensaje)
var edad:Int = 22
mensaje="\(mensaje) y tengo \(edad)"
print(mensaje)
//se puede escapar lo que sea cuando quiera

//COLECIONES
//tuplas
let coordenadas: (Int, Int)=(3,2)
coordenadas.0
let coords = (4,5)
let coorXY : (x: Int, y: Int) = (9,6) //de esta forma se pueden "redefinir los indices"
coorXY.x

//sentencias de control
var x = 2
var y = 3
if x<y {
    print("X es menor que Y")
}else{
    print("Y es menor que X")
}

// && -> and
// || -> or
