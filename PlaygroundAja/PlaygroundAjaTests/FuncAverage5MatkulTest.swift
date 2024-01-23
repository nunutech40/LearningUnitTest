//
//  FuncAverage5MatkulTest.swift
//  PlaygroundAjaTests
//
//  Created by Nunu Nugraha on 23/01/24.
//

import XCTest
@testable import PlaygroundAja

final class FuncAverage5MatkulTest: XCTestCase {

    override func setUpWithError() throws {
        print("Memulai FuncAverage5MatkulTest test.")
    }
    
    func testTotalNilai() throws {
        let dataNilai1 = [0, 0, 0, 0, 0]
        let average1 = average5MatKul(nilais: dataNilai1)
       
        // memastikan average tidak kurang dari 0
        XCTAssertGreaterThanOrEqual(average1, 0, "Function average should handle 0 correctly.")
        
        
        let dataNilai2 = [100, 100, 100, 100, 100]
        let average2 = average5MatKul(nilais: dataNilai2)
        
        XCTAssertLessThanOrEqual(average2, 100, "Function average should handle more than 100 correctly")
       
    }

    override func tearDownWithError() throws {
        print("Finish FuncAverage5MatkulTest test.")
    }
}
