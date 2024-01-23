//
//  PersonTest.swift
//  PlaygroundAjaTests
//
//  Created by Nunu Nugraha on 23/01/24.
//

import XCTest
@testable import PlaygroundAja

final class PersonTest: XCTestCase {

    var sharedPerson: Person!
    
    override func setUpWithError() throws {
        print("Memulai PersonTest test.")
        sharedPerson = getSharedPerson()
    }
    
    func testPersonIdentify() throws {
        let person1 = getPerson()
        let person2 = getPerson()
        
        // Kedua objek diharapkan tidak identik karena dibuat secara terpisah.
        XCTAssertNotIdentical(person1, person2, "person1 and person2 should not to be identical...")
        
        let sharedPerson1 = getSharedPerson()
        let sharedPerson2 = getSharedPerson()
        
        // Kedua objek di atas diharapkan tidak identik, karena dibuat secara terpisah.
        XCTAssertIdentical(sharedPerson1, sharedPerson2, "sharedperson1 dan sharedperson2 should be identical...")
        
        
        // ini diharapkan identic
        XCTAssertIdentical(sharedPerson1, sharedPerson)
        
    }
    
    func testIdenticalStructPerson() throws {
        let structPerson1 = getStructPerson()
        let structPerson2 = getStructPerson()
        
        // Kedua objek diharapkan tidak identik karena dibuat secara terpisah.
        XCTAssertNotIdentical(structPerson1 as AnyObject, structPerson2 as AnyObject)
        
        let sharedStructPerson1 = getSharedStructPerson()
        let sharedStructPerson2 = getSharedStructPerson()
        
        // Kedua objek di atas diharapkan tidak identik, karena dibuat secara terpisah.
        XCTAssertNotIdentical(sharedStructPerson1 as AnyObject, sharedStructPerson2 as AnyObject, "sharedStructPerson1 dan sharedStructPerson2 should not to be identical, because struct is copy value not reference to the same value")
        
    }

    override func tearDownWithError() throws {
        print("Finish PersonTest test.")
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
