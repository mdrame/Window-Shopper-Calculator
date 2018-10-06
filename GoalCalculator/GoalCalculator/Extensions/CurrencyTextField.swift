//
//  CurrencyTextField.swift
//  GoalCalculator
//
//  Created by Mohammed Drame on 10/6/18.
//  Copyright © 2018 Mohammed Drame. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        
        customizeView()
        
        
    }
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()

        customizeView()
        
    }
    
    
    
    func customizeView() {
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6946436216)
        layer.cornerRadius = 6.0
        textAlignment = .center
      
        
        if let p = placeholder {
           
            
           let  place = NSAttributedString(string: p, attributes: [ .foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            
            attributedText = place
            
            textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
      
        
    }

}
