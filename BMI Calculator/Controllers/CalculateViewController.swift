//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
//    var bmiValue = "0.0"
    
    var calculatorBrain = CalculatorBrain()

    @IBOutlet weak var heightInMetersLabel: UILabel!
    @IBOutlet weak var weightInKgLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderDidChange(_ sender: UISlider) {
//        print(String(format: "%2f", sender.value))
        heightInMetersLabel.text = String(format: "%.2fm", sender.value) // Don't forget the period!!
    }
    
    @IBAction func weightSliderDidChange(_ sender: UISlider) {
        /*print(Int(sender.value))*/
        
        weightInKgLabel.text = "\(Int(sender.value))Kg"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
//        let bmi = weight / pow(height, 2)
        
//        bmiValue = String(format: "%.1f", bmi)
        
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f", bmi)
//        
//        self.present(secondVC, animated: true, completion: nil)
        calculatorBrain.calculatorBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            let destinationVc = segue.destination as! ResultsViewController
            
            destinationVc.bmiValue = calculatorBrain.getBMIValue()
            destinationVc.advice = calculatorBrain.getAdvice()
            destinationVc.color = calculatorBrain.getColor()
        }
    }
}

