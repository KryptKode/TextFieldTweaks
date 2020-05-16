//
//  ViewController.swift
//  TextFieldTweaks
//
//  Created by Paul on 16/05/2020.
//  Copyright © 2020 Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var currencyTextField: UITextField!
    @IBOutlet weak var switchTextField: UITextField!
    
    @IBOutlet weak var switchControl: UISwitch!
    var zipCodeDelegate = ZipCodeDelegate()
    var currencyDelegate = CurrencyDelegate()
    var switchDelegate = SwitchDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zipCodeTextField.delegate = zipCodeDelegate
        currencyTextField.delegate = currencyDelegate
        switchTextField.delegate = switchDelegate
        switchControl.setOn(switchDelegate.isEnabled, animated: true)
        
    }
    
   
    @IBAction func onSwitchValueChange(_ sender: Any) {
         switchDelegate.isEnabled = switchControl.isOn
    }
    
}

