//
//  CalculatorBrain.swift
//  BasicBMI
//
//  Created by Kate Waller on 2021/07/31.
//
// Calculates BMI and gives advice accordingly

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiOneDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiOneDecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight/(height*height)
        
        if bmiValue < 18.5 {
            print("Underweight")
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: .systemBlue)
        } else if bmiValue < 24.9 {
            print("Normal")
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: .white)
        } else {
            print("Overweight")
            bmi = BMI(value: bmiValue, advice: "Running is fun", color: .systemPink)
        }
    }
    
    mutating func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    //Change Colour of advice label
    mutating func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
}

