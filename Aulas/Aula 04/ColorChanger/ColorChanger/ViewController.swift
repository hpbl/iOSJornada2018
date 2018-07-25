//
//  ViewController.swift
//  ColorChanger
//
//  Created by Hilton Pintor Bezerra Leite on 25/07/18.
//  Copyright © 2018 Hilton Pintor Bezerra Leite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var colors: [String: UIColor] = [
        "red": .red,
        "black": .black
    ]

    @IBOutlet weak var colorTextField: UITextField!
    @IBOutlet weak var colorButton: UIButton!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    @IBAction func tapColorButton(_ sender: Any) {
        let inputColor = self.colorTextField.text!
        let chosenColor = self.colors[inputColor]
        
        if chosenColor != nil {
            // é uma cor válida
            self.view.backgroundColor = chosenColor
            self.errorLabel.isHidden = true
        } else {
            // não é válida
            self.errorLabel.isHidden = false
            self.errorLabel.text = "\(inputColor) is not valid"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.colorTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        
        
        
        let text = textField.text!
        
        let swiftRange = Range(range, in: text)!
        let newText = text.replacingCharacters(in: swiftRange, with: string)
        
        if newText != "" {
            self.colorButton.isEnabled = true
        } else {
            self.colorButton.isEnabled = false
        }
        
        
        return true
    }
}

