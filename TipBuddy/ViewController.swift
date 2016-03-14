//
//  ViewController.swift
//  TipBuddy
//
//  Created by Chase Swanstrom on 3/9/16.
//  Copyright © 2016 SwanInc. All rights reserved.
//

extension String {
    var doubleValue: Double? {
        return Double(self)
    }
    var floatValue: Float? {
        return Float(self)
    }
    var integerValue: Int? {
        return Int(self)
    }
}

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldBill: UITextField!
    
    @IBOutlet weak var labelService: UILabel!
   
    @IBOutlet weak var stepperService: UIStepper!
    
    @IBOutlet weak var labelTip: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTip(sender: AnyObject) {
        var percentage : Float
        switch labelService.text! {
        case "1":
            percentage = 0.10
        case "2":
            percentage = 0.10
        case "3":
            percentage = 0.10
        case "4":
            percentage = 0.13
        case "5":
            percentage = 0.13
        case "6":
            percentage = 0.15
        case "7":
            percentage = 0.15
        case "8":
            percentage = 0.20
        case "9":
            percentage = 0.20
        case "10":
            percentage = 0.25
        default:
            percentage = 0.0
        }
        
        if let value = textFieldBill.text!.floatValue  {
            let tip = value * percentage
            labelTip.text="Tip: $\(String(tip)) | Percentage: \(percentage * 100)%"

        } else {
            textFieldBill.text!=("not nice, try again")
        }

       
    }

    @IBAction func stepperAction(sender: UIStepper) {
        labelService.text="\(Int(stepperService.value))"
    }
}

