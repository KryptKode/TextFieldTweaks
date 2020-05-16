//
//  CurrencyDelegate.swift
//  TextFieldTweaks
//
//  Created by Paul on 16/05/2020.
//  Copyright © 2020 Paul. All rights reserved.
//

import Foundation
import UIKit

class CurrencyDelegate : NSObject, UITextFieldDelegate {
    var currency = "$"
    var delimeter = "."
    var numberOfCharactersAfterDelimeter = 2
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
    
        if newText.contains(currency){
            newText = newText.replacingOccurrences(of: currency, with: "") as NSString
        }
        
        if newText.contains(delimeter){
            newText = newText.replacingOccurrences(of: delimeter, with: "") as NSString
        }
        
        if newText.length > numberOfCharactersAfterDelimeter {
            newText = "\(newText.substring(to: newText.length - numberOfCharactersAfterDelimeter))\(delimeter)\(newText.substring(from: newText.length - numberOfCharactersAfterDelimeter) )" as NSString
        }
        
        textField.text = "\(currency)\(newText)"
    
        return false
    }
    
}
