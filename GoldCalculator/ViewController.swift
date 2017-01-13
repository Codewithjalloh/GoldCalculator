//
//  ViewController.swift
//  GoldCalculator
//
//  Created by wealthyjalloh on 11/01/2017.
//  Copyright © 2017 CWJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    // ui objec
    
    @IBOutlet private weak var resultDisplayLabel: UILabel!
    
    
    // variable == to false for user is in the middle of typing
    private var inTheMiddelOfTyping = false
    
    
    // getter and setter for display value
    private var displayValue: Double {
        get {
            return Double(resultDisplayLabel.text!)!
        }
        set {
            resultDisplayLabel.text = String(newValue)
        }
    }
    
    
    private var brain = CalculatorBrain()
    
    // action button exec when you tap multiply, subtract, add etc.. button
    @IBAction private func performOperationButton(_ sender: UIButton) {
        
        if inTheMiddelOfTyping {
            brain.setOperand(operand: displayValue)
            inTheMiddelOfTyping = false
        }
        
        if let mathematicalSymbol = sender.currentTitle {
            brain.performOperation(symbol: mathematicalSymbol)
        }
        displayValue = brain.result
        
        
    }

    
    // action button exec when you tap 1, 2,4,6 etc button
    @IBAction private func digitTouchButtonPressed(_ sender: UIButton) {
        
        let digit = sender.currentTitle!
        if inTheMiddelOfTyping {
            let textCurrentlyInDisplay = resultDisplayLabel.text!
            resultDisplayLabel.text = textCurrentlyInDisplay +  digit
        } else {
            resultDisplayLabel.text = digit
            inTheMiddelOfTyping = true
        }
        
    }
    
    @IBAction func save() {
        
        
    }
    
    
    

}

