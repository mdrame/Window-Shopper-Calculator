//
//  customehourTextfield.swift
//  GoalCalculator
//
//  Created by Mohammed Drame on 10/6/18.
//  Copyright © 2018 Mohammed Drame. All rights reserved.
//

import UIKit

@IBDesignable class customehourTextfield: UILabel{
    
    
    
    override func prepareForInterfaceBuilder() {
        
        call()
        
    }
    
    
    func call() {
        
        layer.cornerRadius = 8.0
        layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        layer.borderWidth = 0.0
        
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
       call()
        
    }

}
