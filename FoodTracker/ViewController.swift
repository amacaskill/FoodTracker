//
//  ViewController.swift
//  FoodTracker
//
//  Created by Alexis Macaskill on 8/24/16.
//
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
//MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!

    
    @IBOutlet weak var mealNameLabel: UILabel!
        override func viewDidLoad() {
        super.viewDidLoad()
        //Handle the text field's user input through delegate callbacks
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //Hide the Keyboard
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
    }
   
//MARK: Actions
    @IBAction func setDefaultLabelText(sender: UIButton) {mealNameLabel.text = "Defult Text"
    }
}

