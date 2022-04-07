//
//  LoginViewController.swift
//  AuthApp
//
//  Created by Kislov Vadim on 07.04.2022.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    private let userName = "User"
    private let password = "Password"

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        
        welcomeVC.userName = userName
    }

    @IBAction func onLogin() {
        if userNameField.text != userName || passwordField.text != password {
            showMessage(title: "Login or Password is wrong!", message: "Please re-enter data ")

            passwordField.text = ""
        }
    }
    
    @IBAction func onForgotUser() {
        showMessage(title: "Remind", message: "Your user name is User")
    }
    
    @IBAction func onForgotPassword() {
        showMessage(title: "Remind", message: "Your password is Password")
    }
    
    
    private func showMessage(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(alertAction)
        
        present(alert, animated: true)
    }
}

