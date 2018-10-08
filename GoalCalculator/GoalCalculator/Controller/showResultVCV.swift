//
//  showResultVCV.swift
//  GoalCalculator
//
//  Created by Mohammed Drame on 10/6/18.
//  Copyright © 2018 Mohammed Drame. All rights reserved.
//

import UIKit





class showResultVCV: UIViewController {
    
    
    
    var wageclass: Wage!
    
    @IBOutlet weak var hoursLable: UILabel!
    
    @IBOutlet weak var doneButton: UIButton!
    
    @IBAction func donePress(_ sender: customeDoneButton) {
        
        Wage.result = nil
  
        
        dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Wage.result != nil {

        hoursLable.text = "\(Wage.result!) Hrs"
            
        } else {
            
            // tell user to go back and enter number 
            
        }
 
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
