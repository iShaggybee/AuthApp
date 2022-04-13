//
//  GeneralInfoViewController.swift
//  AuthApp
//
//  Created by Kislov Vadim on 13.04.2022.
//

import UIKit

class GeneralInfoViewController: UIViewController {
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var factsSV: UIStackView!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "My name is \(person.fullName)"
        
        for fact in person.facts {
            let label = UILabel()
            label.text = "  - \(fact)"
            label.numberOfLines = 0
            label.textColor = UIColor.gray
            
            factsSV.addArrangedSubview(label)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let additionalInfoVC = segue.destination as? AdditionalInfoViewController else {
            return
        }
        
        additionalInfoVC.person = person
    }
}
