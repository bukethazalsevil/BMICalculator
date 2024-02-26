//
//  ViewController.swift
//  BMICalculator
//
//  Created by Buket Hazal Sevil on 22.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var calculatorBrain = BMIBrain()
    
    @IBOutlet weak var heightLabelInput: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSldier: UISlider!
    @IBOutlet weak var weightLabelInput: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabelInput.text = height + "m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.2f", sender.value)
        weightLabelInput.text = weight + "Kg"
    }
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSldier.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
           
        }
    }
    
}
