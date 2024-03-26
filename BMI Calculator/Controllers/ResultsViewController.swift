//
//  ResultsViewComtrollerViewController.swift
//  BMI Calculator
//
//  Created by Laura Hart on 3/26/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    

    @IBAction func recaulculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
