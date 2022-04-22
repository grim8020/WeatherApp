//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //text field should refer back to viewcontroller
        searchTextField.delegate = self
    }

    @IBAction func searchPressed(_ sender: UIButton) {
        //this action tells the search field that we are done editing and should dismiss the keyboard
        searchTextField.endEditing(true)
        print(searchTextField.text!)
    }
    
    //return button gets pressed -> what should it do.  Must return a true or fasle (Bool) at the end of the function to determine if it should proccess that action
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //this action tells the search field that we are done editing and should dismiss the keyboard
        searchTextField.endEditing(true)
        print(searchTextField.text!)
        return true
    }
    
    //what happens when the user deselects the text field without typing something
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something"
            return false
        }
    }
    
    //clears the search bar after word is entered to make another search without having to delete the previous word
    func textFieldDidEndEditing(_ textField: UITextField) {
        //use search textField.text to get the weather for that city
        
        
        searchTextField.text = ""
    }
    
}

