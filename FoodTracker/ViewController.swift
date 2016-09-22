//
//  ViewController.swift
//  FoodTracker
//
//  Created by Alexis Macaskill on 8/24/16.
//
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate,
    UIImagePickerControllerDelegate, UINavigationControllerDelegate {
//MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    
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
    @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {
        //Hide the keyboard
        
        nameTextField.resignFirstResponder()
    }

// UIImagePickerController is a view controller that lets a user pick media from their photo library.
    let imagePickerController = UIImagePickerController()
    

    
// Make sure ViewController is notified when the user picks an image.
    imagePickerController.delegate = self
    presentViewController(imagePickerController, animated: true, completion: nil)
    
    @IBAction func setDefaultLabelText(sender: UIButton) {mealNameLabel.text = "Defult Text"}
}

