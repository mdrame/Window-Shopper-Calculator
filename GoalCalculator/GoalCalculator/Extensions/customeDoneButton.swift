//
//  customeDoneButton.swift
//  GoalCalculator
//
//  Created by Mohammed Drame on 10/6/18.
//  Copyright © 2018 Mohammed Drame. All rights reserved.
//

import UIKit

@IBDesignable class customeDoneButton: UIButton {

    
    override func prepareForInterfaceBuilder() {
        
        call()
        
        
    }
    
    func call() {
        
        layer.cornerRadius = 3.0
        layer.borderColor = #colorLiteral(red: 1, green: 0.106028901, blue: 0.06988724521, alpha: 0.932416524)
        layer.borderWidth = 2.0
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        call()
       
        
    }

}
