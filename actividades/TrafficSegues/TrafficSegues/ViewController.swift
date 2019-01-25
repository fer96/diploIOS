//
//  ViewController.swift
//  TrafficSegues
//
//  Created by DelaRosa Fernando on 24/08/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Esta funcion va en la vista del controlador la cual va ser el destino
    //Por otro lado en la ultima vista antes de regresar con el unwindsegue debe ser asociado una accion a elemnteo exit
    //Observar como no se tienen lineas cruzadas entre vistas, si estas existen se puede decir que esta mal implementado
    //Es necesario poner "@IBAction" para que este esperando a la vista del controlador
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue){
    }

    //Este metodo se ejecuta antes de cada segue
    //Debe existir una outlet entre el elemento a asociar a esta accion
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }*/
    
    
    @IBOutlet weak var segueSwitch: UISwitch!
    @IBAction func yellowButton(_ sender: UIButton) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "yellowSegue", sender: nil)
        }
    }
    @IBAction func greenButton(_ sender: UIButton) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "greenSegue", sender: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

