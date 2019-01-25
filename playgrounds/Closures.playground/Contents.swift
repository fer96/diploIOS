//: Playground - noun: a place where people can play

import UIKit

//Se puede definir como una funcion anonima
//Osea que pude ser un parametro dentro de otra funcion

func suma(valor: Int, sumaFunc: (Int) -> Int) -> Int{
    return sumaFunc(valor)
}
//La implementacion del closure se ubica por la palabra in
let closure = {(valor: Int) -> Int in
    return valor + 5
}

let closure2 = {
    (valor: Int) -> Int in
    print("no suma")
    return valor
}
suma(valor: 4, sumaFunc: closure)
suma(valor: 5, sumaFunc: closure2)

//implementacion directa
suma(valor: 5, sumaFunc: {(valor: Int) -> Int in return valor + 10})
suma(valor: 5, sumaFunc: {valor in return valor + 6})
//La notacion $n; donde n es un numero que corresponde a los parametros que estan entrando a la funcion
//en el ejemplo $0 corresponde a valor
suma(valor: 18, sumaFunc: {return $0 + 5})
//Los ultimos parametros de la funcion se pueden escribir de esta forma
suma(valor: 45){$0 + 54}
