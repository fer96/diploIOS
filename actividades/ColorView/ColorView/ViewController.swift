//
//  ViewController.swift
//  ColorView
//
//  Created by DelaRosa Fernando on 11/08/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //IBOutlet Interface Builder outle se observa que es una conexión con el @
    //Si se cambia el nombre de las conexiones se tienen que supervisar que no se vean afectadas en la parte grafica del view controller
    //Lo que se hace para cambiar el nombre a la conexion es borrar la anterior en el inspector de conexiones y ligar el elemento con la nueva conexion
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    //esta es la primera vista de de la app
    override func viewDidLoad() {
        super.viewDidLoad()
        //Aca se modifican las propiedades fisicas o visuales de los elementos utilizando las conexiones anteriormete hechas
        colorView.layer.borderColor = UIColor.black.cgColor
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        updateControls()
        updateColor()
    }
    
    func updateColor(){
        //varibles para modificar el background del colorView
        var red: CGFloat = 0.0
        var green: CGFloat = 0.0
        var blue: CGFloat = 0.0
        if redSwitch.isOn{
            red=CGFloat(redSlider.value)
        }
        if greenSwitch.isOn{
            green=CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn{
            blue=CGFloat(blueSlider.value)
        }
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    func updateControls(){
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
    //las conexiones outlet solo es para asociar los elementos
    //para aquello elementos como los switch se requiere una conexion de action
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateControls()
        updateColor()
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    @IBAction func reset(_ sender: UIButton) {
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        updateControls()
        updateColor()
    }
    
    //se recomienda dejar esta funcion al final
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

