//
//  ViewController.swift
//  Silly Song
//
//  Created by Kutay Karakamış on 1.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var namePlain: UITextField!
    
    @IBOutlet weak var LyricTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LyricTextField?.text = ""
        namePlain?.text = ""
        namePlain?.delegate = self

    }

    @IBAction func reset(_ sender: Any) {
        LyricTextField.text = ""
        namePlain.text = ""
    }
    @IBAction func displayLyrics(_ sender: Any) {
        
        if namePlain.text != nil {
            LyricTextField?.text = lyricsForName(lyricsTemplate: bananaFanaLyricsTemplate,
                              fullName: namePlain.text!)
        }
    }
    
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
