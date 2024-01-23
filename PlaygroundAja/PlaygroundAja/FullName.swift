//
//  FullName.swift
//  PlaygroundAja
//
//  Created by Nunu Nugraha on 22/01/24.
//

import Foundation

func fullName(firstName: String?, lastName: String?) -> String {
    guard firstName != nil || lastName != nil else {
        return "No Name"
    }
    
    let nFirstName = firstName ?? ""
    let nLastName = lastName ?? ""
    
    
    return (nFirstName + " " + nLastName).trimmingCharacters(in: .whitespacesAndNewlines)
}
