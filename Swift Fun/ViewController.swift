//
//  ViewController.swift
//  Swift Fun
//
//  Created by Robyn Murray on 8/2/17.
//  Copyright © 2017 Robyn Murray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    var buttonCount = 0
    
    // add label outlet
    @IBOutlet weak var myLabel: UILabel!
    
    // add switch outlet to handle math functions
    @IBOutlet weak var additionSwitch: UISwitch!
    
    // add text field 1
    @IBOutlet weak var topTextField: UITextField!
    
    // add text field 2
    @IBOutlet weak var bottomTextField: UITextField!
    
    //add button action
    @IBAction func buttonTapped(_ sender: Any) {
        
        let addition = additionSwitch.isOn
        
        // handles both add and subtract cases
        if addition {
            let sum = Double(topTextField.text!)! + Double(bottomTextField.text!)!
            
            myLabel.text = "\(topTextField.text!) + \(bottomTextField.text!) = \(sum)"
            
        }
        else {
            
            let sum = Double(topTextField.text!)! - Double(bottomTextField.text!)!
            
            myLabel.text = "\(topTextField.text!) - \(bottomTextField.text!) = \(sum)"
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myLabel.textColor = UIColor.blue
        myLabel.text = "Robyn is Awesome"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

