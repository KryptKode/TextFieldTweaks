//
//  SwitchDelegate.swift
//  TextFieldTweaks
//
//  Created by Paul on 16/05/2020.
//  Copyright © 2020 Paul. All rights reserved.
//

import Foundation
import UIKit

class SwitchDelegate : NSObject, UITextFieldDelegate {
    
    var isEnabled = false
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return isEnabled
    }
    
}
