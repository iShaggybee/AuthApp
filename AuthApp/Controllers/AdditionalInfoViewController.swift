//
//  AdditionalInfoViewController.swift
//  AuthApp
//
//  Created by Kislov Vadim on 13.04.2022.
//

import UIKit

class AdditionalInfoViewController: UIViewController {
    @IBOutlet var aboutButton: UIBarButtonItem!
    @IBOutlet var aboutLabel: UILabel!
    @IBOutlet var qualitiesSV: UIStackView!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutLabel.text = person.about
        
        if person.note == nil {
            aboutButton.isEnabled = false
        }
        
        for qualitie in person.qualities {
            let label = UILabel()
            label.text = "  - \(qualitie)"
            label.numberOfLines = 0
            label.textColor = UIColor.gray
            
            qualitiesSV.addArrangedSubview(label)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let noteVC = segue.destination as? NoteViewController else {
            return
        }
        
        noteVC.note = person.note ?? "..."
    }
}
