//
//  Extensions.swift
//  Extensions
//
//  Created by Ariela Cohen on 10/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


extension String {
    func whisper() -> String {
    let lowercase = self.lowercased()
        return lowercase
    }
}

extension String {
    func shout() -> String {
        return self.uppercased()
    }
}

extension String {
    var pigLatin: String {
        var stringCharacters: [Character] = []
        for character in self.characters {
            stringCharacters.append(character)
        }
        
        let firstCharacter = stringCharacters[0]
        stringCharacters.remove(at: 0)
        stringCharacters.append(firstCharacter)
        
        var charString = String(stringCharacters)
        
        charString.append("ay")
        
        return charString
    }
}

extension String {
    var points: Int {
        var vowelCount = 0
        var constCount = 0
        var vowelPoints = 0
        var totalPoints = 0
        if self.isEmpty {
            return 0
        }
        else {
        for char in self.characters {
            switch char {
                case "a", "A":
                vowelCount += 1
                case "e", "E":
                vowelCount += 1
                case "i", "I":
                vowelCount += 1
            case "o", "O":
                vowelCount += 1
                case "u", "U":
                vowelCount += 1
                case "y", "Y":
                vowelCount += 1
            default:
                constCount += 1
            }
        }
        vowelPoints = vowelCount * 2
        totalPoints = vowelPoints + constCount
        }
        return totalPoints
    }
}

extension Int {
    func half() -> Int { return (self / 2 ) }
}

extension Int {
    func isDivisible(by number: Int) -> Bool {
        return (self % number == 0)
    }
}

extension Int {
    var squared: Int { return (self * self) }
}

extension Int {
    var halved: Int { return half() }
}

extension String {
    var unicornLevel: String {
        var unicornString = ""
    
        for char in self.characters {
        unicornString.append("🦄")
        }
        return unicornString
    }
}








