//
//  ViewController.swift
//  Swift Fun
//
//  Created by Robyn Murray on 8/2/17.
//  Copyright © 2017 Robyn Murray. All rights reserved.
//  Hello I Like Pizza!!
//

import UIKit

class ViewController: UIViewController {
    
    var buttonCount = 0
    
    //add label outlet
    @IBOutlet weak var myLabel: UILabel!
    
    //add button action
    @IBAction func buttonTapped(_ sender: Any) {
        
        buttonCount += 1
        print(buttonCount)
        
        if buttonCount >= 10 {
            view.backgroundColor = UIColor.cyan
            myLabel.textColor = UIColor.blue
            myLabel.text = "Coding is Fun!"
        }
        
        if buttonCount >= 15 {
            view.backgroundColor = UIColor.black
            myLabel.textColor = UIColor.white
            myLabel.text = "Stop Pressing ME!"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myLabel.textColor = UIColor.green
        myLabel.text = "Robyn is Awesome"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

