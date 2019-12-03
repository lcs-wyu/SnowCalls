//
//  ViewController.swift
//  SnowCalls
//
//  Created by Yu, Boning on 2019-11-28.
//  Copyright © 2019 Wellesley Yu. All rights reserved.
//

import UIKit
//UITextViewDelegate - just means we "promise" to implement certain methods on this class or also can mean some functionality is availble to us.
class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var inputNumber: UITextView!
    
    @IBOutlet weak var outputNumber: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Make this class be the delegate for the input text view
        
        inputNumber.delegate = self
        
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
        
        // Iterate over each character
        for character in input {
            
            // Converting the input character by character
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
            case "0","1","2","3","4","5","6","7","8","9":
                phoneNumber += "\(character)"
            default:
                // Ignore anything that is not covered by the rules above
                break
            }
            if phoneNumber.count == 3 || phoneNumber.count == 7 {
                
            }
            
            
            
        }
        
    
        
    }
    
    //Mark: Adding UITextView delegate methods
    
    //Called automatically when the contects of the text view are changed
    func textViewDidChange(_ textView: UITextView) {
        outputNumber.text = ""
    }
    
    
    
    

}

