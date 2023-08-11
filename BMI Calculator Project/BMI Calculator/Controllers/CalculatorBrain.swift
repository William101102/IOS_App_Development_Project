//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by William Huang on 2023/8/3.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getAdvice() -> String{
        return bmi?.advice ?? "NO advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let BMIValue = weight / (height * height)
        
        if BMIValue < 18.5{
            bmi = BMI(value: BMIValue, advice: "Eat more pies", color: UIColor.blue)
        }else if BMIValue < 24.9{
            bmi = BMI(value: BMIValue, advice: "Fit as a fiddle!", color: UIColor.green)
        }else{
            bmi = BMI(value: BMIValue, advice: "Eat less pies", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String{
        let bmitodeciplace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmitodeciplace
    }
}
