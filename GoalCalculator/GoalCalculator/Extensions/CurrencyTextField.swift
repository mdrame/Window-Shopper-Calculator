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
    
    
    // <-------- add dallor sign in textfield ----->

    
    
    override func draw(_ rect: CGRect) {
        
        let size: CGFloat = 20
        
        let currencyLable = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        
        currencyLable.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.1294117719, blue: 0.1411764771, alpha: 0.7123555223)
        currencyLable.textAlignment = .center
        currencyLable.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        currencyLable.layer.cornerRadius = 5.0
        currencyLable.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLable.text = formatter.currencySymbol
        
        addSubview(currencyLable)

    }
    
    
 
     // <----- display UI/UX in real time ----->
 

    
    
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
