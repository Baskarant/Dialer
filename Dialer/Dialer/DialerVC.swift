//
//  DialerVC.swift
//  Dialer
//
//  Created by Baskaran T on 29/07/17.
//  Copyright © 2017 Baskaran T. All rights reserved.
//

import UIKit

class DialerVC: UIViewController {
    
    @IBOutlet weak var display: UILabel?
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func dialDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping{
        print("\(digit)")
        let textcurrentlydisplay = display!.text!
        display!.text = textcurrentlydisplay + digit
        } else {
           display!.text = digit
           userIsInTheMiddleOfTyping = true
        }
    }
    
   
    @IBAction func btncall(_ sender: UIButton) {
        
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        
        display?.text = ""
    
    }
    
}
