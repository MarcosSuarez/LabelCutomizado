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
        myShadow.shadowOffset = CGSize(width: 1, height: -1)
        myShadow.shadowColor = UIColor.black
        
        let todoElTexto = NSRange(location: 0, length: attributeString.length)
        
        let primeras5 =  NSRange(location: 12, length: 5)
       
        attributeString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: "Chalkduster", size: 18.0)!, range: primeras5)
        
        let ultimas7 = NSRange(location: attributeString.length - 7, length: 7)
        attributeString.addAttribute(NSAttributedString.Key.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: ultimas7)
        attributeString.addAttribute(NSAttributedString.Key.underlineColor, value: UIColor.white, range: ultimas7)
        
        attributeString.addAttributes([
            NSAttributedString.Key.strokeWidth : 4,
            NSAttributedString.Key.strokeColor : UIColor.white,
            NSAttributedString.Key.strikethroughStyle : 1,
            NSAttributedString.Key.strikethroughColor : UIColor.red,
            NSAttributedString.Key.shadow: myShadow
            ],range: todoElTexto)
        
        label.attributedText = attributeString
    }
}

