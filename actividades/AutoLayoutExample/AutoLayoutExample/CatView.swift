//
//  CatView.swift
//  AutoLayoutExample
//
//  Created by DelaRosa Fernando on 28/09/18.
//  Copyright © 2018 DeLaRosa Fernando. All rights reserved.
//

import UIKit

class CatView: UIView {
    
    let imageView: UIImageView = {
        let iv = UIImageView(frame: .zero)
        iv.image = UIImage(named: "cat")
        iv.contentMode = .scaleAspectFit
        iv.translatesAutoresizingMaskIntoConstraints = false
        //la linea pasada siempre se pona cada vez que se hacen cosntraints programados
        return iv
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAutoLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupAutoLayout()
    }
    
    func setupAutoLayout(){
        backgroundColor = UIColor(named: "darkRed")!
        addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.heightAnchor.constraint(equalTo: self.heightAnchor)])
    }
}
