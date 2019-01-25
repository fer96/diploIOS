//: Playground - noun: a place where people can play

import UIKit

/*
 Objectiv C utiliza protocolos "opcionales" (a diferencia de Swift que sus protocolos son "obligatorios"), la ventaja de Objective C vs Swift es que puede manejar instrucciones a bajo nivel.
 Los protocolos pueden heredar de protocolos llegando a tener una 'herencia multiple' entre protocolos.
 Los protocolos deben ser pensados como forma generica.
 */

protocol MiProtocol {
    func juega()
}

class alumnoReprobador: MiProtocol{
    func juega() {
        print("Estoy jugando")
    }
}

/*
 Las extensiones permiten cambiar o agregar comportamiento a una clase.
 Agregan funcionalidad que no estaban contempladas al inicio.
 Son funcionales por que reciden en memoria.
 */

extension String{
    func saluda(){
        print("Soy una extension")
    }
}

var alumno = "Fer"
alumno.saluda()


