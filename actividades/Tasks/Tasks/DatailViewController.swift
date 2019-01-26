//
//  DatailViewController.swift
//  Tasks
//
//  Created by Fernando De La Rosa on 1/26/19.
//  Copyright © 2019 Fernando De La Rosa. All rights reserved.
//

import UIKit
import CoreData

class DatailViewController: UIViewController {
    
    var task = NSManagedObject()
    
    @IBOutlet weak var detailTaskTxtField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = task.value(forKey: "name") as? String
        if(task.value(forKey: "detail") as? String != ""){
            detailTaskTxtField.text = task.value(forKey: "detail") as? String
        }
    }
    

    @IBAction func addTaskDetail(_ sender: UIBarButtonItem) {
        save(detail: detailTaskTxtField.text ?? "")
    }
    
    func save(detail: String) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let managedContext = appDelegate.persistentContainer.viewContext
        task.setValue(detail, forKey: "detail")
        
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save \(error), \(error.userInfo)")
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
