//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Laura Hart on 3/26/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Stuff here
        
        view.backgroundColor = .red
        
        print(bmiValue)
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        view.addSubview(label)
    }
}
