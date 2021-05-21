//
//  ViewController.swift
//  Silly Song
//
//  Created by Kutay Karakamış on 1.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var namePlain: UITextField!
    
    @IBOutlet weak var lyricTextField: UITextView!
    
    @IBOutlet weak var mainPlain: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lyricTextField?.text = ""
        namePlain?.text = ""
        namePlain?.delegate = self
        mainPlain.alignment = .center

    }

    @IBAction func reset(_ sender: Any) {
        lyricTextField.text = ""
        namePlain.text = ""
    }
    @IBAction func displayLyrics(_ sender: Any) {
        
        let name = namePlain?.text ?? ""
        lyricTextField?.text = lyricsForName(lyricsTemplate: bananaFanaLyricsTemplate,
                                            fullName: name)
        
    }
    
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
