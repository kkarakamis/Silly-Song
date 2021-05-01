//
//  SillySongGenerate.swift
//  Silly Song
//
//  Created by Kutay Karakamış on 1.05.2021.
//

import Foundation


let vovels = "aeıioöuü"

let bananaFanaLyricsTemplate = [
    "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>"].joined(separator: "\n")

func shortenName(of fullName:String) -> String{
    var shortName = fullName.lowercased()

    for character in shortName{
        if !vovels.contains(character) {
            shortName.removeFirst()
        } else {
            break
        }
    }
    return shortName
}

func lyricsForName(lyricsTemplate:String, fullName:String) -> String{
    let lyrics = lyricsTemplate
        .replacingOccurrences(of: "<FULL_NAME>", with: fullName)
        .replacingOccurrences(of: "<SHORT_NAME>", with: shortenName(of: fullName))
    return lyrics
}

