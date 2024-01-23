//
//  SetParameterTest.swift
//  PlaygroundAjaTests
//
//  Created by Nunu Nugraha on 23/01/24.
//

import XCTest
@testable import PlaygroundAja

final class SetParameterTest: XCTestCase {

    override func setUpWithError() throws {
        print("Memulai SetParameterTest test.")
    }
    
    func testDataParameterIsNil() throws {
        // test case untuk send parameternya nil semua. 
        XCTAssertNil(sendParamFilterPermission(dateStart: nil, dateEnd: nil, jenisIzin: nil))
    }
    
    func testDataParameterNotNil() throws {
        
        // test case untuk send parameter tidak nil
        XCTAssertNotNil(sendParamFilterPermission(dateStart: "10-10-2023", dateEnd: "10-11-2023", jenisIzin: "Sakit"))
        
    }
    
    override func tearDownWithError() throws {
        print("Finish SetParameterTest test.")
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
