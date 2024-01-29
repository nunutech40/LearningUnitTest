//
//  ViewController.swift
//  PlaygroundAja
//
//  Created by Nunu Nugraha on 07/01/24.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        maxProfit([3,2,6,5,0,3])
    }
    
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count >= 2 else { return 0 }
        
        var dataTerkecil = prices[0]
        var dataTerbesar = prices[1]
        var biggestDifferent = 0
        print("first data cek dataterbesar: \(dataTerbesar) and dataterkecil: \(dataTerkecil)")
        
        for i in 0...(prices.count - 2) {
            
            if prices[i] < prices[i + 1] {
                if prices[i] < dataTerkecil {
                    dataTerkecil = prices[i]
                    dataTerbesar = 0
                }
                if prices[i + 1] > dataTerbesar {
                    dataTerbesar = prices[i + 1]
                }
                
            }
            print("after update data cek dataterbesar: \(dataTerbesar) and dataterkecil: \(dataTerkecil)")
        }
        
        print("cek dataterbesar: \(dataTerbesar) and dataterkecil: \(dataTerkecil)")
        
        let result = dataTerbesar - dataTerkecil
        
        return result >= 0 ? result : 0
        
    }
    
}
