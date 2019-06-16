//
//  ViewController.swift
//  LabelCutomizado
//
//  Created by Marcos Suarez on 16/06/2019.
//  Copyright © 2019 Marcos Suarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelCustom: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cambiar(label: labelCustom)
    }

    

    func cambiar(label: UILabel) {
        
        let attributeString = NSMutableAttributedString(string: label.text ?? "")
        
        let myShadow = NSShadow()
        myShadow.shadowBlurRadius = 3
        myShadow.shadowOffset = CGSize(width: 3, height: 3)
        myShadow.shadowColor = UIColor.black
        
        attributeString.addAttributes([
            NSAttributedString.Key.strokeWidth : 4,
            NSAttributedString.Key.strokeColor : UIColor.white,
            NSAttributedString.Key.strikethroughStyle : 1,
            NSAttributedString.Key.strikethroughColor : UIColor.red,
            NSAttributedString.Key.shadow: myShadow
            ],range: NSRange(location: 0, length: attributeString.length))
        
        label.attributedText = attributeString
    }
}

