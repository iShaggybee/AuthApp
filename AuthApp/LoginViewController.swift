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
    
    @IBAction func onRemindUserName() {
        showMessage(title: "Remind", message: "Your user name is User")
    }
    
    @IBAction func onRemindPassword() {
        showMessage(title: "Remind", message: "Your password is Password")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameField.text = ""
        passwordField.text = ""
    }
    
    private func showMessage(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameField {
            passwordField.becomeFirstResponder()
        } else {
            onLogin()
            performSegue(withIdentifier: "transitionWelcomeVC", sender: nil)
        }
        
        return true
    }
}
