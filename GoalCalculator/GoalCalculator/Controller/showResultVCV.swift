//
//  showResultVCV.swift
//  GoalCalculator
//
//  Created by Mohammed Drame on 10/6/18.
//  Copyright © 2018 Mohammed Drame. All rights reserved.
//

import UIKit


// boss screen

protocol SideSelectionDelegate {
    func didTapDoneButon (itemprice: String, wagemaking: String)
    
}


class showResultVCV: UIViewController {
    
    var selectionDelegate: SideSelectionDelegate!
    
    var wageclass: Wage!
    
    @IBOutlet weak var hoursLable: UILabel!
    
    @IBOutlet weak var doneButton: UIButton!
    
    var emptyWage = ""
    var emptyItemprice = ""
    
    @IBAction func donePress(_ sender: customeDoneButton) {
        
        Wage.result = nil
        
        
        selectionDelegate?.didTapDoneButon(itemprice: emptyWage , wagemaking: emptyItemprice)
  
        
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
