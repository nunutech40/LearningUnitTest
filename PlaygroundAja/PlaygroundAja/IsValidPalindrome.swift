//
//  IsValidPalindrome.swift
//  PlaygroundAja
//
//  Created by Nunu Nugraha on 24/01/24.
//

import Foundation
let letterMap: [Character: Character] = [
    "a": "a", "b": "b", "c": "c", "d": "d", "e": "e", "f": "f", "g": "g", "h": "h", "i": "i", "j": "j", "k": "k", "l": "l", "m": "m",
    "n": "n", "o": "o", "p": "p", "q": "q", "r": "r", "s": "s", "t": "t", "u": "u", "v": "v", "w": "w", "x": "x", "y": "y", "z": "z",
    "A": "a", "B": "b", "C": "c", "D": "d", "E": "e", "F": "f", "G": "g", "H": "h", "I": "i", "J": "j", "K": "k", "L": "l", "M": "m",
    "N": "n", "O": "o", "P": "p", "Q": "q", "R": "r", "S": "s", "T": "t", "U": "u", "V": "v", "W": "w", "X": "x", "Y": "y", "Z": "z",
    "0": "0", "1": "1", "2": "2", "3": "3", "4": "4", "5": "5", "6": "6", "7": "7", "8": "8", "9": "9"
]

func isPalindrome1(_ s: String) -> Bool {
    let filteredString = s.lowercased().filter { $0.isLetter || $0.isNumber }
    let reversedString = String(filteredString.reversed())
    return filteredString == reversedString
    
}

func isPalindrome2(_ s: String) -> Bool {
    let s = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
    
    var left = 0
    var right = s.count - 1
    
    while left < right {
        if s[left] != s[right] {
            return false
        }
        left += 1
        right -= 1
    }
    return true
}

func isPalindrome3(_ s: String) -> Bool {
    var leftIndex = 0
    var rightIndex = s.count - 1
    
    while leftIndex <= rightIndex {
        var leftValue: Character?
        var rightValue: Character?
        
        leftValue = getCharFromString(s, leftIndex)
        while !checkCharAlphaNumeric(keyChar: leftValue) && leftIndex < rightIndex {
            leftIndex += 1
            leftValue = getCharFromString(s, leftIndex)
        }
        
        rightValue = getCharFromString(s, rightIndex)
        while !checkCharAlphaNumeric(keyChar: rightValue) && leftIndex < rightIndex {
            rightIndex -= 1
            rightValue = getCharFromString(s, rightIndex)
        }
        
        if leftIndex <= rightIndex && letterMap[leftValue!] != letterMap[rightValue!] {
            return false
        }
        
        leftIndex += 1
        rightIndex -= 1
    }
    
    return true
}

func isPalindrome(_ s: String) -> Bool {
    let s = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
    
    var left = 0
    var right = s.count - 1
    
    while left < right {
        if s[left] != s[right] {
            return false
        }
        left += 1
        right -= 1
    }
    return true
}

func getCharFromString(_ str: String, _ index: Int) -> Character {
    str[str.index(str.startIndex, offsetBy: index)]
}

func checkCharAlphaNumeric(keyChar: Character?) -> Bool {
    guard let keyChar = keyChar else {
        return false
    }
    
    return letterMap[keyChar] != nil
}
