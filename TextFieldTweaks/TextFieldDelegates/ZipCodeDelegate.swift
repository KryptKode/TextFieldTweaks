//
//  ZipCodeDelegate.swift
//  TextFieldTweaks
//
//  Created by Paul on 16/05/2020.
//  Copyright © 2020 Paul. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeDelegate : NSObject, UITextFieldDelegate {
    var maxChars = 5
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        // Construct the text that will be in the field if this change is accepted
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        return newText.length <= maxChars
    }
}
