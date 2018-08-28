//
//  ViewController.swift
//  foodTracker
//
//  Created by Tyler Donohue on 8/28/18.
//  Copyright © 2018 Tyler Donohue. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle the text field's user input through dlegate callbacks.
        nameTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the Keyboard
        textField.resignFirstResponder()
    }
    
    // MARK: Actions
  
    @IBAction func setDeafaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Deafult Text"
    }
    
    
}

