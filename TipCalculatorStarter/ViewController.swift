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

