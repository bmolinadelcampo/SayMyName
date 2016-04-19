//
//  ViewController.swift
//  SayMyName
//
//  Created by Belén Molina del Campo on 19/04/2016.
//  Copyright © 2016 Belén Molina del Campo. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var changeColourSwitch: UISwitch!
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.text = ""
        messageLabel.text = ""
        changeColourSwitch.on = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func switchValueChanged(sender: UISwitch)
    {
        if sender.on
        {
            view.backgroundColor = UIColor.greenColor()
        }
        else
        {
            view.backgroundColor = UIColor.whiteColor()
        }
    }
    
    @IBAction func buttonTapped(sender: UIButton)
    {
        sayHello()
    }

    func sayHello() -> Bool
    {
        // rc = return code
        var rc = false
        
        if let name = nameTextField.text
        {
            rc = true
            nameTextField.resignFirstResponder()
            let nameComponents = name.characters.split(" ").map { String($0) }
            messageLabel.text = "Hello \(nameComponents[0])"
        }
        return rc
    }
}

