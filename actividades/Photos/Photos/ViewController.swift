//
//  ViewController.swift
//  Photos
//
//  Created by DelaRosa Fernando on 05/10/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var addButton: UIButton!
    @IBAction func buttonPhoto(_ sender: UIButton) {
        addPhoto()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isHidden = true
        addButton.layer.cornerRadius = 7
        addButton.layer.borderColor = UIColor(red:0.91, green:0.30, blue:0.24, alpha:1.0).cgColor
        let rightButton = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(addPhoto))
        navigationItem.rightBarButtonItem = rightButton
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func  addPhoto(){
        let actionSheet = UIAlertController(title: "Photos", message: "Selecciona la fuente de tu foto", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        
        //MARK: Bibloteca de fotos
        let imagePickerView = UIImagePickerController()
        actionSheet.addAction(UIAlertAction(title: "Bibloteca de fotos", style: .default, handler: { (action) in
            
            imagePickerView.sourceType = .photoLibrary
            imagePickerView.allowsEditing = true
            imagePickerView.delegate = self
            self.present(imagePickerView, animated: true, completion: nil)
        }))
        
        //MARK: Camara +Se necesitan pedir permisos+
        actionSheet.addAction(UIAlertAction(title: "Camara", style: .default, handler: { (action) in
            imagePickerView.sourceType = .camera
            imagePickerView.allowsEditing = true
            imagePickerView.delegate = self
            self.present(imagePickerView, animated: true, completion: nil)
        }))
        present(actionSheet, animated: true, completion: nil)
    }
    
    //MARK: PickerView Delegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        print("Photo dictionary: \(info)")
        guard let image = info[UIImagePickerControllerEditedImage] as?  UIImage else { return }
        imageView.image = image
        imageView.isHidden = false
        picker.dismiss(animated: true, completion: nil)
    }
    
}

