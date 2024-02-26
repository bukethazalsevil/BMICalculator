//
//  BMIBrain.swift
//  BMICalculator
//
//  Created by Buket Hazal Sevil on 22.02.2024.
//

import UIKit

struct BMIBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
            let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
        }
        
        func getAdvice() -> String {
            return bmi?.advice ?? "No advice"
        }
        
        
        
        
        mutating func calculateBMI(height: Float, weight: Float) {
            let bmiValue = weight / (height * height)

            if bmiValue < 18.5 {
                bmi = BMI(value: bmiValue, advice: "Eat more pizza!")
            } else if bmiValue < 24.9 {
                bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!" )
            } else {
                bmi = BMI(value: bmiValue, advice: "Eat less!")
            }
        }
    
    
    

    
}
