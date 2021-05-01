//
//  ViewController.swift
//  Silly Song
//
//  Created by Kutay Karakamış on 1.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var namePlace: UITextField!

    @IBOutlet weak var LyricTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LyricTextField?.text = ""
        namePlace?.text = ""
        namePlace?.delegate = self

    }

    @IBAction func reset(_ sender: Any) {
        LyricTextField.text = ""
        namePlace.text = ""
    }
    @IBAction func displayLyrics(_ sender: Any) {
        
        if namePlace.text != nil {
            LyricTextField?.text = lyricsForName(lyricsTemplate: bananaFanaLyricsTemplate,
                              fullName: namePlace.text!)
        }
    }
    
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
