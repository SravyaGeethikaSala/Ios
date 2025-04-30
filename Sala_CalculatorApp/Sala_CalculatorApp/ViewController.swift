//
//  ViewController.swift
//  Sala_CalculatorApp
//
//  Created by Sravya Geethika Sala on 2/25/25.
//

import UIKit

class ViewController: UIViewController {

    var firstNumber: Double = 0
        var secondNumber: Double = 0
        var currentOperation: String = ""
        var isWaitingForSecondNumber: Bool = false

    @IBOutlet weak var resultOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultOutlet.text! = "0"

    }

    
    @IBAction func num0Btn(_ sender: UIButton) {
        if isWaitingForSecondNumber {
                        resultOutlet.text = "0"
                        isWaitingForSecondNumber = false
                    }
                else {
                        if resultOutlet.text == "0" || resultOutlet.text == "" {
                            resultOutlet.text = "0"
                        } else {
                            resultOutlet.text! += "0"
                        }
                    }

    }
    
    @IBAction func num1Btn(_ sender: UIButton) {
        if isWaitingForSecondNumber {
                       resultOutlet.text = "1"
                       isWaitingForSecondNumber = false
                   }
               else {
                       if resultOutlet.text == "0" || resultOutlet.text == "" {
                           resultOutlet.text = "1"
                       } else {
                           resultOutlet.text! += "1"
                       }
                   }

    }
    
    @IBAction func num2Btn(_ sender: UIButton) {
        if isWaitingForSecondNumber {
                        resultOutlet.text = "2"
                        isWaitingForSecondNumber = false
                    }
                else {
                        if resultOutlet.text == "0" || resultOutlet.text == "" {
                            resultOutlet.text = "2"
                        } else {
                            resultOutlet.text! += "2"
                        }
                    }

    }
    
    @IBAction func num3Btn(_ sender: UIButton) {
        if isWaitingForSecondNumber {
                       resultOutlet.text = "3"
                       isWaitingForSecondNumber = false
                   }
               else {
                       if resultOutlet.text == "0" || resultOutlet.text == "" {
                           resultOutlet.text = "3"
                       } else {
                           resultOutlet.text! += "3"
                       }
                   }

    }
    
    @IBAction func num4Btn(_ sender: UIButton) {
        if isWaitingForSecondNumber {
                        resultOutlet.text = "4"
                        isWaitingForSecondNumber = false
                    }
                else {
                        if resultOutlet.text == "0" || resultOutlet.text == "" {
                            resultOutlet.text = "4"
                        } else {
                            resultOutlet.text! += "4"
                        }
                    }

    }
    
    @IBAction func num5Btn(_ sender: UIButton) {
        if isWaitingForSecondNumber {
                        resultOutlet.text = "5"
                        isWaitingForSecondNumber = false
                    }
                else {
                        if resultOutlet.text == "0" || resultOutlet.text == "" {
                            resultOutlet.text = "5"
                        } else {
                            resultOutlet.text! += "5"
                        }
                    }

    }
    
    @IBAction func num6Btn(_ sender: UIButton) {
        if isWaitingForSecondNumber {
                        resultOutlet.text = "6"
                        isWaitingForSecondNumber = false
                    }
                else {
                        if resultOutlet.text == "0" || resultOutlet.text == "" {
                            resultOutlet.text = "6"
                        } else {
                            resultOutlet.text! += "6"
                        }
                    }

    }
    
    @IBAction func num7Btn(_ sender: UIButton) {
        if isWaitingForSecondNumber {
                        resultOutlet.text = "7"
                        isWaitingForSecondNumber = false
                    }
                else {
                        if resultOutlet.text == "0" || resultOutlet.text == "" {
                            resultOutlet.text = "7"
                        } else {
                            resultOutlet.text! += "7"
                        }
                    }

    }
    
    @IBAction func num8Btn(_ sender: UIButton) {
        if isWaitingForSecondNumber {
                        resultOutlet.text = "8"
                        isWaitingForSecondNumber = false
                    }
                else {
                        if resultOutlet.text == "0" || resultOutlet.text == "" {
                            resultOutlet.text = "8"
                        } else {
                            resultOutlet.text! += "8"
                        }
                    }

    }
    
    @IBAction func num9Btn(_ sender: UIButton) {
        if isWaitingForSecondNumber {
                        resultOutlet.text = "9"
                        isWaitingForSecondNumber = false
                    }
                else {
                        if resultOutlet.text == "0" || resultOutlet.text == "" {
                            resultOutlet.text = "9"
                        } else {
                            resultOutlet.text! += "9"
                        }
                    }

    }
    
    @IBAction func equalBtn(_ sender: UIButton) {
        secondNumber = Double(resultOutlet.text!) ?? 0
                var result: Double = 0
                
                switch currentOperation {
                case "+": result = firstNumber + secondNumber
                case "-": result = firstNumber - secondNumber
                case "*": result = firstNumber * secondNumber
                case "/":
                    if(secondNumber == 0){
                        resultOutlet.text = "nan"
                        return
                    }
                    else {
                        result = firstNumber / secondNumber
                    }
                case "%":
                    result = (firstNumber.truncatingRemainder(dividingBy: secondNumber))
                    resultOutlet.text = String(format: "%.1f" , result)
                    return;
                default: break
                }
        
                // Display the result without decimals if it's an integer
                        if result.truncatingRemainder(dividingBy: 1) == 0 {
                            resultOutlet.text = String(format: "%.0f", result)
                        } else {
                            resultOutlet.text = String(format: "%.2f", result)
                        }

    }
    
    @IBAction func addBtn(_ sender: UIButton) {
        firstNumber = Double(resultOutlet.text!) ?? 0
                currentOperation = "+"
                isWaitingForSecondNumber = true

    }
    
    @IBAction func subtractBtn(_ sender: UIButton) {
        firstNumber = Double(resultOutlet.text!) ?? 0
                currentOperation = "-"
                isWaitingForSecondNumber = true

    }
    
    @IBAction func multiplyBtn(_ sender: UIButton) {
        firstNumber = Double(resultOutlet.text!) ?? 0
                currentOperation = "*"
                isWaitingForSecondNumber = true

    }
    
    @IBAction func divideBtn(_ sender: UIButton) {
        firstNumber = Double(resultOutlet.text!) ?? 0
                currentOperation = "/"
                isWaitingForSecondNumber = true

    }
    
    @IBAction func clearBtn(_ sender: UIButton) {
        resultOutlet.text = "0"

    }
    
    @IBAction func decimalBtn(_ sender: UIButton) {
        resultOutlet.text! += "."

    }
    
    @IBAction func percentageBtn(_ sender: UIButton) {
        firstNumber = Double(resultOutlet.text!) ?? 0
                currentOperation = "%"
                isWaitingForSecondNumber = true

    }
    
    @IBAction func signchangeBtn(_ sender: UIButton) {
        if let lastChar = resultOutlet.text?.last, "+-*/%".contains(lastChar) {
                       resultOutlet.text!.removeLast()
                       resultOutlet.text! += lastChar == "-" ? "+" : "-"
                   } else if var value = Int(resultOutlet.text!) {
                       value *= -1
                       resultOutlet.text = String(value)
                   }

    }
    
    @IBAction func allClearBtn(_ sender: UIButton) {
        firstNumber = 0
                secondNumber = 0
                currentOperation = ""
                resultOutlet.text = "0"

    }
}

