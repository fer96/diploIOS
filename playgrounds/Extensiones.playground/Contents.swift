//MARK: Extensions
//La funcionalidad de las extensiones es agregar funcionalidades a structs, clases, protocolos, tipos de datos, etc
/*extension String{
    func grita(){
        print("Ay")
    }
}
var cadena: String = "Hola mundo"
cadena.grita()
*/

//MARK: Vistas desde el playground
import UIKit
import PlaygroundSupport

let liveViewFrame = CGRect(x: 0, y: 0, width: 500, height: 500)
let liveView = UIView(frame: liveViewFrame)
//se carga la vista
liveView.backgroundColor = UIColor.blue


let smallFrame = CGRect(x: 0, y: 0, width: 100, height: 100)
let square = UIView(frame: smallFrame)
square.backgroundColor = UIColor.white
//se carga la vista
liveView.addSubview(square)

//forma de tener una animacion sencilla
//UIView.animate(withDuration: 3.0){
//    square.backgroundColor = UIColor.orange
//    square.frame = CGRect(x: 150, y: 150, width: 200, height: 200)
//}

//forma de juntar dos animaciones
//UIView.animate(withDuration: 3.0, animations: {
//    square.backgroundColor = UIColor.orange
//    square.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//}){ (_) in
//    UIView.animate(withDuration: 3.0){
//        square.backgroundColor = UIColor.white
//        square.frame = CGRect(x: 150, y: 150, width: 100, height: 100)
//    }
//}

//Otra forma de repetir una animacion
//UIView.animate(withDuration: 3.0, delay: 2.0, options: [.repeat], animations:{
//    square.backgroundColor = UIColor.orange
//    square.frame = CGRect(x: 400, y: 400, width: 100, height: 100)
//}, completion: nil)

UIView.animate(withDuration: 3.0, animations:{
    square.backgroundColor = UIColor.orange
    
    let scaleTransform = CGAffineTransform(scaleX: 2.0, y: 2.0)
    let rotateTransform = CGAffineTransform(rotationAngle: .pi)
    let translateTransform = CGAffineTransform(translationX: 200, y: 200)
    
    let combo = scaleTransform.concatenating(rotateTransform.concatenating(translateTransform))
    square.transform = combo
}) { (_) in
    UIView.animate(withDuration: 2.0, animations: {
        //regresa a su posicion inicial
        square.transform = CGAffineTransform.identity
    })
}

//Esta linea simpre va hasta abajo
PlaygroundPage.current.liveView = liveView
