//
//  ViewController.swift
//  TableView
//
//  Created by DelaRosa Fernando on 25/08/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var nombres = ["Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel","Luis","Pedro","Juan","Manuel"]
    
    /*metodos de UITableViewDataSource*/
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }
    //indexPath tiene la posicion de la celda actual
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "celda"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = nombres[indexPath.row]
        return cell
    }
    
    /*Metodos de UITableViewDelegate*/
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let cell = tableView.cellForRow(at: indexPath)
        cell?.accessoryType = .checkmark
        
        //Alertas
        let alertController = UIAlertController(title: "Alumnos", message: "Hola como estas", preferredStyle: .alert)
        //Agrega botton 'OK' al alert
        let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
        //Agrega button 'cancel' al alert
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel) { (alertAction) in
            print("Click en el cancel")
        }
        alertController.addAction(cancelAction)
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

