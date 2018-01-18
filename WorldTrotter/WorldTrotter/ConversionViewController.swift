//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by AmeriHealth Caritas Employee on 1/15/18.
//  Copyright © 2018 Tin Pan Tech. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    var fahrenheitValue: Measurement<UnitTemperature>? {
        didSet {
            updateCelsiusLabel()
        }
    }
    
    var celsiusValue: Measurement<UnitTemperature>? {
        if let fahrenheitValue = fahrenheitValue {
            return fahrenheitValue.converted(to: .celsius)
        } else {
            return nil
        }
    }
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    } ()
    let numerics = CharacterSet(charactersIn: "0123456789.")
    var nonNumerics = CharacterSet.alphanumerics
    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField) {
        if let text = textField.text, let value = Double(text) {
            fahrenheitValue = Measurement(value: value, unit: .fahrenheit)
        } else {
            fahrenheitValue = nil
        }
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    
    func updateCelsiusLabel() {
        if let celsiusValue = celsiusValue {
            celsiusLabel.text =
                numberFormatter.string(from: NSNumber(value: celsiusValue.value))
        } else {
            celsiusLabel.text = "???"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCelsiusLabel()
        nonNumerics.formUnion(CharacterSet.punctuationCharacters)
        nonNumerics.formUnion(CharacterSet.symbols)
        nonNumerics.formSymmetricDifference(numerics)
    }
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        let existingTextHasDecimalSeperator = textField.text?.range(of: ".")
        let replacementTextHasDecimalSeperator = string.range(of: ".")
        let repString = string as NSString
        let stringRange = NSRange(0..<string.count)
        let replacementTextHasNonNumeric = NSStringFromRange(repString.rangeOfCharacter(
            from: nonNumerics, range: stringRange))
//            from: CharacterSet.letters, range: stringRange))
        if existingTextHasDecimalSeperator  != nil,
            replacementTextHasDecimalSeperator != nil {
            return false
        } else {
            if replacementTextHasNonNumeric == "{0, 1}" {
                return false
            } else {
                return true
            }
        }
    }
}
