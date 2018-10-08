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
        
        layer.cornerRadius = 9.0
        layer.borderColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        layer.borderWidth = 6
        
        
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
       call()
        
    }

}
