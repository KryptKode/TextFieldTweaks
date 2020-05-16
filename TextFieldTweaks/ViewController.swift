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
    @IBOutlet weak var uiSwitch: UISwitch!
    
    var zipCodeDelegate = ZipCodeDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zipCodeTextField.delegate = zipCodeDelegate
        
    }


}

