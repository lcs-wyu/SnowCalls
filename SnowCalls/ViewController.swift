//
//  ViewController.swift
//  SnowCalls
//
//  Created by Yu, Boning on 2019-11-28.
//  Copyright © 2019 Wellesley Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputNumber: UITextView!
    
    @IBOutlet weak var outputNumber: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertNumber(_ sender: Any) {
        
        // INPUT
        // Get the input from the user
        guard let input = inputNumber.text , input.count > 0 else {
            outputNumber.text = "Please enter a telephone number to convert"
            
            return
        }
        
        
        // PROCESS
        // 1. Look at each character in the input and apply rules to build output string
        var phoneNumber = ""
        
        
        for character in input {
            switch character {
            case "A","B","C":
                phoneNumber += "2"
            case "D","E","F":
                phoneNumber += "3"
            case "G","H","I":
                phoneNumber += "4"
            case "J","K","L":
                phoneNumber += "5"
            case "M","N","O":
                phoneNumber += "6"
            case "P","Q","R","S":
                phoneNumber += "7"
            case "T","U","V":
                phoneNumber += "8"
            case "W","X","Y","Z":
                phoneNumber += "9"
            case "-":
                break
            default:
                phoneNumber += "\(character)"
            }
            outputNumber.text = "\(phoneNumber)"
        }
        
    
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    

}

