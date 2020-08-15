//
//  ViewController.swift
//  Calculator
//
//  Created by Matthew Dias on 7/16/20.
//  Copyright © 2020 Matthew Dias. All rights reserved.
//

import UIKit

enum Operator {
    case plus
    case minus
    case multiply
    case divide
}

class ViewController: UIViewController {
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    var selectedNumber: Float?
    var total: Float = 0
    var currentOperator: Operator?
    var operand: Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func oneTapped(_ sender: Any) {
        selectedNumber = 1
    }
    
    @IBAction func twoTapped(_ sender: Any) {
        selectedNumber = 2
    }
    
    @IBAction func threeTapped(_ sender: Any) {
        selectedNumber = 3
    }
    
    @IBAction func fourTapped(_ sender: Any) {
        selectedNumber = 4
    }
    
    @IBAction func fiveTapped(_ sender: Any) {
        selectedNumber = 5
    }
    
    @IBAction func sixTapped(_ sender: Any) {
        selectedNumber = 6
    }
    
    @IBAction func sevenTapped(_ sender: Any) {
        selectedNumber = 7
    }
    
    @IBAction func eightTapped(_ sender: Any) {
        selectedNumber = 8
    }
    
    @IBAction func nineTapped(_ sender: Any) {
        selectedNumber = 9
    }
    
    @IBAction func zeroTapped(_ sender: Any) {
        selectedNumber = 0
    }
    
    /*
     selected number
     plus -> operand = selected number & selected number = 0
     selected number
     plus -> total = operand + selected & selected
     selected number
     equal
     */
    @IBAction func plusTapped(_ sender: Any) {
        currentOperator = .plus

        total += selectedNumber ?? 0
    }
    
    @IBAction func minusTapped(_ sender: Any) {
        currentOperator = .minus
        total -= selectedNumber ?? 0
    }
    
    @IBAction func multiplyTapped(_ sender: Any) {
        guard currentOperator == nil, let selectedNumber = selectedNumber else {
            currentOperator = .multiply
            return
        }
        
        if total != 0 {
            total *= selectedNumber
        } else {
            total = selectedNumber
        }
        
        currentOperator = .multiply
    }
    
    @IBAction func divideTapped(_ sender: Any) {
        guard currentOperator == nil, let unwrappedNumber = selectedNumber else {
            currentOperator = .divide
            return
        }
        
        if total != 0 {
            total /= unwrappedNumber
        } else {
            total = unwrappedNumber
        }
        
        currentOperator = .divide
    }
    
    @IBAction func equalTapped(_ sender: Any) {
        guard let selectedNumber = selectedNumber else {
            resultLabel.text = "\(total)"
            currentOperator = nil
            return
        }
        
        switch currentOperator {
        case .plus:
            total = total + selectedNumber
        case .minus:
            total = total - selectedNumber
        case .multiply:
            total = total * selectedNumber
        case .divide:
            total = total / selectedNumber
        case .none:
            print("uh oh, didn't do math right")
        }
        
        resultLabel.text = "\(total)"
        currentOperator = nil
        self.selectedNumber = nil
    }
}


