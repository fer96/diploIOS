//
//  ToDoCell.swift
//  ToDo
//
//  Created by Fernando De La Rosa on 06/09/18.
//  Copyright © 2018 Fernando De La Rosa. All rights reserved.
//

import UIKit

protocol ToDoCellDelegate {
    func checkMarkTapped(_ sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    
    var delegate: ToDoCellDelegate?
    
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func completeButtonTapped(_ sender: UIButton) {
        delegate?.checkMarkTapped(self)
    }
    
    
}
