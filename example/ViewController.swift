//
//  ViewController.swift
//  Example
//
//  Created by Antonio Serrano on 11/1/17.
//  Copyright © 2017 ASG APPS S.L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    let emails = ["info@asgapps.es", "sport@invalid","not email", "serranogomezantonio@gmail.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var text = ""
        for email in emails {
            
            let isValid = email.isValidEmail();
            text += "\(email) \n \(isValid ? "Correct email" : "Incorrect email") \n\n"
        
        }
        
        label.text = text
        label.textColor = UIColor(hex:0x000000)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

