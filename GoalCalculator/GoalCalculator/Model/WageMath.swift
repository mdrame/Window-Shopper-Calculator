//
//  WageMath.swift
//  GoalCalculator
//
//  Created by Mohammed Drame on 10/7/18.
//  Copyright © 2018 Mohammed Drame. All rights reserved.
//

import Foundation


class Wage  {
    
    
    class func getHours(yourWage wage: Double, itemPrice item: Double) -> Int {
    
        return Int(ceil( item / wage))
    
    }
    
    static var result: String?

    
    
}
