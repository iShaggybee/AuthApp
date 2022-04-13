//
//  NoteViewController.swift
//  AuthApp
//
//  Created by Kislov Vadim on 13.04.2022.
//

import UIKit

class NoteViewController: UIViewController {
    @IBOutlet var noteLabel: UILabel!
    
    var note: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        noteLabel.text = note
    }
}
