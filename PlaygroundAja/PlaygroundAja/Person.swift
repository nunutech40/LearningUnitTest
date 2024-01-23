//
//  Person.swift
//  PlaygroundAja
//
//  Created by Nunu Nugraha on 23/01/24.
//

import Foundation

class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    // Singleton instance
    static let shared = Person(name: "Shared John")
}

func getPerson() -> Person {
    return Person(name: "John")
}

func getSharedPerson() -> Person {
    return Person.shared
}

struct StructPerson {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    static let shared = StructPerson(name: "Nunu Nugraha")
}

func getStructPerson() -> StructPerson {
    return StructPerson(name: "Nunu Nugraha")
}

func getSharedStructPerson() -> StructPerson {
    return StructPerson.shared
}
