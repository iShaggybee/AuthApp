//
//  SettingsViewController.swift
//  AuthApp
//
//  Created by Kislov Vadim on 13.04.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet var loginField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginField.text = user.login
        passwordField.text = user.password
    }
    
    @IBAction func onChangeAccount() {
        loginField.text = loginField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        passwordField.text = passwordField.text?.trimmingCharacters(in: .whitespacesAndNewlines)

        if loginField.text == nil || loginField.text!.isEmpty || passwordField.text == nil || passwordField.text!.isEmpty {
            showMessage(title: "Error", message: "Login or Password cannot be empty")
            
        } else {
            user.login = loginField.text!
            user.password = passwordField.text!
            
            showMessage(title: "Success", message: "Login and Password have been successfully updated")
        }
    }
    
    private func showMessage(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
}
