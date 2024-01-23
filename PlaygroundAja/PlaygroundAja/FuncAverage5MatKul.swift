//
//  FuncAverage5MatKul.swift
//  PlaygroundAja
//
//  Created by Nunu Nugraha on 23/01/24.
//

import Foundation

func average5MatKul(nilais: [Int]) -> Int {
    guard nilais.count == 5, nilais.allSatisfy( { 0...100 ~= $0 } ) else {
        return 0
    }
    
    var result = 0
    for nilai in nilais {
        result += nilai
    }
    
    return result / 5
}
