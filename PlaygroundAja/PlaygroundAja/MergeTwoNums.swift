//
//  MergeTwoNums.swift
//  PlaygroundAja
//
//  Created by Nunu Nugraha on 22/01/24.
//

import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) -> [Int] {
    
    var num1: [Int] = []
    var num2: [Int] = []
    
    if !nums1.isEmpty {
        num1 = Array(nums1[0..<m])
        
        if num1 == [0] {
            num1 = []
        }
        
    }
    
    if !nums2.isEmpty {
        num2 = Array(nums2[0..<n])
        
        if num2 == [0] {
            num2 = []
        }
    }
    
    // Merge and sort
    nums1 = (num1 + num2).sorted()
    return nums1
}
