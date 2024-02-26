//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Buket Hazal Sevil on 26.02.2024.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
      var advice: String?
      var color: UIColor?

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiValueLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiValueLabel.text = bmiValue
                adviceLabel.text = advice
                view.backgroundColor = color

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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
