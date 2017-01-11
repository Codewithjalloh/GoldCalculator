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
    
    
    
    private var inTheMiddelOfTyping = false
    
    @IBAction private func performOperationButton(_ sender: UIButton) {
        
        
    }

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

}

