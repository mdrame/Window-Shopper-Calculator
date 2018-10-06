//
//  ViewController.swift
//  GoalCalculator
//
//  Created by Mohammed Drame on 10/6/18.
//  Copyright © 2018 Mohammed Drame. All rights reserved.
//

import UIKit

class HomeVc: UIViewController {
    
    @IBOutlet weak var darkModeObject: UISwitch!
    
    @IBAction func darkModeOn(_ sender: UISwitch) {
        
        darkmodeactive()

    }
    
    func darkmodeactive () {
        
        // if statement checking and also asigning background colors
        
        if darkModeObject.isOn {
            view.backgroundColor = #colorLiteral(red: 0.2185523347, green: 0.2345708713, blue: 0.2812301713, alpha: 1)
            darkmodeString.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        } else {
            view.backgroundColor = #colorLiteral(red: 0.9997929931, green: 0.4672402143, blue: 0.6461750269, alpha: 1)
            darkmodeString.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
        
        
    }
    
    @IBOutlet weak var darkmodeString: UILabel!
    
    
    // --------------- textfield obejcts and action unders ------- //
    
    
    
    
    // --------------- under here is programmatic UIButton function ------- //
    
    func programmaticUIButton () {
        
        let calculatebutton = UIButton(frame: CGRect(x: 0, y: 580, width: view.frame.size.width , height: 65))
        calculatebutton.backgroundColor = #colorLiteral(red: 0.9997029901, green: 0.8823732138, blue: 0.4117028713, alpha: 1)
        calculatebutton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        calculatebutton.setTitle("Calculate", for: .normal)
        
        view.addSubview(calculatebutton)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //  ------- programmaticUIButton function called under----- //
        programmaticUIButton()
        
        
        
        
        
    }
    
    
    
    
    
    
    


}

