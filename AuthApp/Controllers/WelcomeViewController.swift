//
//  WelcomeViewController.swift
//  AuthApp
//
//  Created by Kislov Vadim on 07.04.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet var helloLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        helloLabel.text = "\(person.surname) \(person.name)"
    }
}
