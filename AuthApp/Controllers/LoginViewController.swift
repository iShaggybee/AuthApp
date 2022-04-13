//
//  LoginViewController.swift
//  AuthApp
//
//  Created by Kislov Vadim on 07.04.2022.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var loginField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    private var user = User.getUserInfo()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        
        for viewController in tabBarController.viewControllers ?? [] {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.person = user.person
            } else if let settingsVC = viewController as? SettingsViewController {
                settingsVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                let generalInfoVC = navigationVC.topViewController as! GeneralInfoViewController
                
                generalInfoVC.person = user.person
            }
        }
    }

    @IBAction func onLogin() {
        if loginField.text != user.login || passwordField.text != user.password {
            showMessage(title: "Login or Password is wrong!", message: "Please re-enter data ")

            passwordField.text = ""
        }
    }
    
    @IBAction func onRemindLogin() {
        showMessage(title: "Remind", message: "Your login is \(user.login)")
    }
    
    @IBAction func onRemindPassword() {
        showMessage(title: "Remind", message: "Your password is \(user.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginField.text = ""
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
        if textField == loginField {
            passwordField.becomeFirstResponder()
        } else {
            onLogin()
            performSegue(withIdentifier: "transitionWelcomeVC", sender: nil)
        }
        
        return true
    }
}
