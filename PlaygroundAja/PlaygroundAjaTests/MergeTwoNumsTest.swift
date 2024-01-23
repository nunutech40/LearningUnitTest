//
//  MergeTwoNumsTest.swift
//  PlaygroundAjaTests
//
//  Created by Nunu Nugraha on 22/01/24.
//

import XCTest
@testable import PlaygroundAja

final class MergeTwoNumsTest: XCTestCase {
    
    // Dipanggil sebelum setiap test method dijalankan
    override func setUpWithError() throws {
        // Tulis kode setup di sini
        print("Memulai MergeTwoNumsTest test.")
    }
    
    func testReturnDataMerge() throws {
        // initial array and parameters
        var num1 = [1,2,3,0,0,0]
        let m = 3
        let num2 = [2,5,6]
        let n = 3
        
        // expected result
        let expectedResult = [1,2,2,3,5,6]
        
        // perform the merge
        let result = merge(&num1, m, num2, n)
        
        // Assert that the result is as expected
        XCTAssertEqual(result, expectedResult)
    }
    
    func testReturnDataMergeNotEqual() throws {
        // initial array and parameters
        var num1 = [1,2,3,0,0,0]
        let m = 3
        let num2 = [2,5,6,8]
        let n = 4
        
        // expected result
        let expectedResult = [1,2,2,3,5,6]
        
        // perform the merge
        let result = merge(&num1, m, num2, n)
        
        // Assert that the result is as expected
        XCTAssertNotEqual(result, expectedResult)
    }
    
    func testNegativeNumbersMerge() throws {
        // initial array and parameters
        var num1 = [-4, -3, 1,2,3]
        let m = 5
        let num2 = [2,5,6,8]
        let n = 4
        
        // expected result
        let expectedResult = [-4, -3,1,2,2,3,5,6]
        
        // perform the merge
        let result = merge(&num1, m, num2, n)
        
        // Assert that the result is as expected
        XCTAssertNotEqual(result, expectedResult)
    }
    
    func testReturnDataIfOnOfDataEmpty() throws {
        // Initial array and parameter
        var num1 = [1]
        let m = 1
        let num2: [Int] = []
        let n = 1
        
        // expected result
        let expectedResult = [1]
        
        // perform the merge
        let result = merge(&num1, m, num2, n)
        
        // Assert that result is as expected
        XCTAssertEqual(result, expectedResult)
        
    }
    
    func testDataZeroForMMNZero() throws {
        // Initial array and parameter
        var num1 = [0]
        let m = 0
        let num2 = [1]
        let n = 1
        
        // expected result
        let expectedResult = [1]
        
        // perform the merge
        let result = merge(&num1, m, num2, n)
        
        // Assert that result is as expected
        XCTAssertEqual(result, expectedResult)
        
    }
    
    func testDataReturnEmptyArray() throws {
        // Initial array and parameter
        var num1: [Int] = []
        let m = 0
        let num2: [Int] = []
        let n = 0
        
        // expected result
        let expectedResult: [Int] = []
        
        // perform the merge
        let result = merge(&num1, m, num2, n)
        
        // Assert that result is as expected
        XCTAssertEqual(result, expectedResult)
        
    }
    
    func testLargeNumber() throws {
        // Initial array and parameter
        var num1: [Int] = [1000000, 11000000]
        let m = 0
        let num2: [Int] = []
        let n = 0
        
        // expected result
        let expectedResult: [Int] = []
        
        // perform the merge
        let result = merge(&num1, m, num2, n)
        
        // Assert that result is as expected
        XCTAssertEqual(result, expectedResult)
    }
    
    func testMaxIntandMinInt() throws {
        // Initial array and parameter
        
        
        var num1: [Int] = [Int.min, Int.max]
        let m = 0
        let num2: [Int] = []
        let n = 0
        
        // expected result
        let expectedResult: [Int] = []
        
        // perform the merge
        let result = merge(&num1, m, num2, n)
        
        // Assert that result is as expected
        XCTAssertEqual(result, expectedResult)
    }
    
    // Dipanggil setelah setiap test method selesai dijalankan
    override func tearDownWithError() throws {
        // Tulis kode cleanup di sini
        print("Test MergeTwoNumsTest selesai.")
    }
    
}
