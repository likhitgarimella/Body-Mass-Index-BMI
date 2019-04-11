import UIKit

func calcBMI (weight : Double, height : Double) -> String {
    let bmi = weight / pow(height, 2)

    let shortenedBMI = String(format: "%.2f", bmi)
    
    var interpretation = ""
    
    if bmi > 25 {
        interpretation = "You are overweight"
    }
    else if bmi > 18.5 && bmi < 25 {
        interpretation = "You have a normal weight"
    }
    else if bmi < 18.5 {
        interpretation = "You are underweight"
    }
    
    return "Your BMI is  \(shortenedBMI) and \(interpretation)"
}

var bmiResult = calcBMI (weight : 63, height : 1.8)
print(bmiResult)
