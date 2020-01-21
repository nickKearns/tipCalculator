//
//  ViewController.swift
//  TipCalculatorStarter
//
//  Created by Chase Wang on 9/19/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var themeSwitch: UISwitch!
    @IBOutlet weak var billAmountTextField: BillAmountTextField!
    
    @IBOutlet weak var tipPercentSegmentedControl: UISegmentedControl!
    @IBOutlet weak var outputCardView: UIView!
    
    
    @IBOutlet weak var tipAmountTitleLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var inputCardView: UIView!
    @IBOutlet weak var totalAmountTitleLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    
    
    // MARK: - View Lifecycle
    
    
    
    func calculate() {
        billAmountTextField.calculateButtonAction = {
            
            if self.billAmountTextField.isFirstResponder {
                           self.billAmountTextField.resignFirstResponder()
                       }
            
            guard let billAmountText = self.billAmountTextField.text,
                let billAmount = Double(billAmountText) else {
                    return
            }
            
            
            let roundedBillAmount = (100 * billAmount).rounded() / 100
            
            let tipPercent = 0.15
            
            let tipAmount = roundedBillAmount * tipPercent
            let roundedTipAmount = (100 * tipAmount).rounded() / 100
            
            let totalAmount = roundedTipAmount + roundedBillAmount
            
            
            self.billAmountTextField.text = String(format: "%.2f", roundedBillAmount)
            self.tipAmountLabel.text = String(format: "%.2f", roundedTipAmount)
            self.totalAmountLabel.text = String(format: "%.2f", totalAmount)
            
            print("Bill Amount: \(roundedBillAmount)")
            print("Tip Amount: \(roundedTipAmount)")
            print("Total Amount: \(totalAmount)")
            
           
        }
    }
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        
        
       
        
    }
    
    
    @IBAction func themeToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("switch is toggled on")
        } else {
            print("switch is toggled off")
        }
        
    }
    
    @IBAction func tipPercentChanged(_ sender: Any) {
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
    }
    
}

