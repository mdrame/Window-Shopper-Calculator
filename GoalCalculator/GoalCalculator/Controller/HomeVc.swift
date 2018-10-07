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
    // ----- dark mode function later call in darkMode action ---- //
    func darkmodeactive () {

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
    
    @IBOutlet weak var wageTextField: CurrencyTextField!
    
    
    @IBOutlet weak var itemPriceField: CurrencyTextField!
    
    
    
    // --------------- under here is programmatic UIButton function and action call ------- //
    
    func programmaticUIButton () {
        
        let calculatebutton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width , height: 65))
        calculatebutton.backgroundColor = #colorLiteral(red: 0.9997029901, green: 0.8823732138, blue: 0.4117028713, alpha: 1)
        calculatebutton.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        calculatebutton.setTitle("Calculate", for: .normal)
        calculatebutton.addTarget(self, action: #selector(HomeVc.calculatedButtonPress), for: .touchUpInside)
        

        wageTextField.inputAccessoryView = calculatebutton
        itemPriceField.inputAccessoryView = calculatebutton
        
       
    }
    
    
    @objc func calculatedButtonPress() {
     
         performSegue(withIdentifier: "result", sender: self)
        
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //  ------- programmaticUIButton function called under----- //
        programmaticUIButton()
        
  
        
    }
    
    
    
    
    
    


}

