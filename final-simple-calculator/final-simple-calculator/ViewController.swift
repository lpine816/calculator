//
//  ViewController.swift
//  final-simple-calculator
//
//  Created by Karla Mazariego on 5/8/25.
//

import UIKit

var firstNum: Double?
var secondNum: Double?
var resultNum: Double?

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func addNums(_ sender: Any){
        firstNum = Double(firstNumber.text!)
        secondNum = Double(secondNumber.text!)
        
        resultNum = firstNum! + secondNum!
        
        result.text = String(Double(resultNum!))
    }
    
    @IBAction func subtract(_ sender: Any){
        firstNum = Double(firstNumber.text!)
        secondNum = Double(secondNumber.text!)
        
        resultNum = firstNum! - secondNum!
        
        result.text = String(Double(resultNum!))
    }
        
    @IBAction func multiply(_ sender: Any){
        firstNum = Double(firstNumber.text!)
        secondNum = Double(secondNumber.text!)
        
        resultNum = firstNum! * secondNum!
        
        result.text = String(Double(resultNum!))
    }
    
    @IBAction func divide(_ sender: Any){
        firstNum = Double(firstNumber.text!)
        secondNum = Double(secondNumber.text!)
        
        resultNum = firstNum! / secondNum!
        
        result.text = String(Double(resultNum!))
    }
    
    @IBAction func clear(_ sender: Any){
        firstNumber.text = ""
        secondNumber.text = ""
        result.text = "Display Answer Here"
    }
    
    @IBAction func expNums(_ sender: Any){
        firstNum = Double(firstNumber.text!)
        secondNum = Double(secondNumber.text!)
        
        var i = 1.0
        var tempResult = 0.0
        var otherTempResult = 0.0
        
        while i < secondNum! {
            if i == 1 {
                tempResult = firstNum! * firstNum!
            }
            else{
                otherTempResult = tempResult * firstNum!
                tempResult = otherTempResult;
            }
            i+=1.0
        }
        
        resultNum = otherTempResult
        
        result.text = String(Double(resultNum!))
    }
}

