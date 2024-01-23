//
//  CekDataGenapTest.swift
//  PlaygroundAjaTests
//
//  Created by Nunu Nugraha on 19/01/24.
//

import XCTest
@testable import PlaygroundAja

final class CekDataGenapTest: XCTestCase {
    
    // Dipanggil sebelum setiap test method dijalankan
    override func setUpWithError() throws {
        // Tulis kode setup di sini
        print("Memulai CekDataGenapTest test.")
    }
    
    func testCekDataGenapWithEvenNumber() throws {
        // Test case dengan bilangan genap
        let evenNumber = 4
        XCTAssertTrue(cekDataGenap(num: evenNumber), "Cek data genap harus mengembalikan true untuk angka 4")
    }
    
    func testCekDataGenapWithOddNumber() throws {
        let oddNumber = 3
        XCTAssertFalse(cekDataGenap(num: oddNumber), "Cek data ganjil harus mengembalikan false untuk angka 3")
    }
    
    func testCekDataGenapWithZeroNumber() throws {
        let zero = 0
        XCTAssertTrue(cekDataGenap(num: zero), "Cek data genap harus mengembalikan true untuk angkan 0")
    }
    
    func testCekDataMinusGenap() throws {
        let negativeGenap = -4
        XCTAssertTrue(cekDataGenap(num: negativeGenap), "Cek data genap harus mengembalikan true untuk angka minus, -4")
    }
    
    func testCekDataMinusGanjil() throws {
        let negativeGanjil = -3
        XCTAssertFalse(cekDataGenap(num: negativeGanjil), "Cek data ganjil harus mengembalikan true untuk angka minus, -3")
    }
    
    func testCekDataGenapWithMaxInt() throws {
        let maxInt = Int.max
        print("cek data maxInt:\(maxInt)")
        
        XCTAssertFalse(cekDataGenap(num: maxInt), "CekDataGenap harus mengembalikan False untuk data maksimal Integer.")
    }
    
    func testCekDataGenapWithMinInt() throws {
        let minInt = Int.min
        print("cek data minInt:\(minInt)")
        
        XCTAssertTrue(cekDataGenap(num: minInt), "CekDataGenap harus mengembalikan True untuk data minimal Integer.")
    }
    
    // Dipanggil setelah setiap test method selesai dijalankan
    override func tearDownWithError() throws {
        // Tulis kode cleanup di sini
        print("Test selesai.")
    }
    
}
