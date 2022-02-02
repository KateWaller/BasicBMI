//
//  BMIResultsViewController.swift
//  BasicBMI
//
//  Created by Kate Waller on 2021/07/31.

//
//The resultViewController that shows the user's BMI and advises them

import UIKit

class BMIResultsViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        adviceLabel.textColor = color
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        //Code below simly takes you back to original screen.
        self.dismiss(animated: true, completion: nil)
    }
}

