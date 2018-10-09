//
//  ViewController.swift
//  GoalCalculator
//
//  Created by Mohammed Drame on 10/6/18.
//  Copyright © 2018 Mohammed Drame. All rights reserved.
//

import UIKit





class HomeVc: UIViewController, SideSelectionDelegate {
    
    func didTapDoneButon(itemprice: String, wagemaking: String) {
        
        wageTextField.text = wagemaking
        itemPriceField.text = itemprice
        
    }
    

    
    var wage: Wage!
   
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
  
        
        //  ------- programmaticUIButton function called under----- //
        programmaticUIButton()
        
        wage = Wage()
        
        
        
        
        // --------- warking lable corner radius ------- //
        
       warningLabel.layer.cornerRadius = 10
        warningLabel.layer.borderWidth = 1
        warningLabel.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        view.addSubview(warningLabel)
        
        
    }
    
    
    
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
    
    // ------------- red warning label object and action  indicatior  -------------- //
    
  
    @IBOutlet weak var warningLabel: UILabel!
    
    @IBOutlet weak var warkingtext: UILabel!
    
    
    
    // --------------- textfield obejcts and action unders ------- //
    
    @IBOutlet weak var wageTextField: CurrencyTextField!
    
    
    @IBOutlet weak var itemPriceField: CurrencyTextField!
    

    
    

    
    
    @objc func calculatedButtonPress() {
        
        if let wagetext = wageTextField.text , let itemprice = itemPriceField.text {
            
            if wagetext.isEmpty , itemprice.isEmpty{
                
                 warningLabel.isHidden = false
                    warkingtext.isHidden = false
         
            } else {
                
                
                Wage.result = Wage.getHours(yourWage: Double(wagetext)!, itemPrice: Double(itemprice)!)
                warkingtext.isHidden = true
                warningLabel.isHidden = true
                
               
                
                
                performSegue(withIdentifier: "result", sender: self)
               
     
        }
            
        }
       
        
        
        
  
        
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? showResultVCV {
            
            destination.wageclass = wage
            destination.selectionDelegate = self
          
            }
        }

    
    

}

