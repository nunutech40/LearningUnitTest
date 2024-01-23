//
//  FullNameTest.swift
//  PlaygroundAjaTests
//
//  Created by Nunu Nugraha on 22/01/24.
//

import XCTest
@testable import PlaygroundAja

final class FullNameTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        print("Memulai FullNameTest test.")
    }
    
    func testReturnFullName() throws {
        // Inisial Variable
        let firstName = "Nunu"
        let lastName = "Nugraha"
        
        // expected result
        let expectedResult = "Nunu Nugraha"
        
        // get fullname
        let fullName = fullName(firstName: firstName, lastName: lastName)
        
        // Assert EqualFullName
        XCTAssertEqual(fullName, expectedResult)
    }
    
    func testReturnNotNill() throws {
        // Inisial Variable
        let firstName = "Nunu"
        let lastName = "Nugraha"
        
        // get fullname
        let fullName = fullName(firstName: firstName, lastName: lastName)
        
        // assert test case not nill
        XCTAssertNotNil(fullName)
    }
    
    func testFullNameWithEmptyString() throws {
        // Inisial Variable
        let firstName = ""
        let lastName = ""
        
        // get fullname
        let fullName = fullName(firstName: firstName, lastName: lastName)
        
        // assert test case return empty
        XCTAssertEqual(fullName, "", "Fullname should handle empty string correctly")
    }
    
    func testFullNameWithNilInput() throws {
        // get fullname
        let fullName = fullName(firstName: nil, lastName: nil)
        
        // assert test case return empty
        XCTAssertEqual(fullName, "No Name", "Fullname should handle nil input correctly")
    }
    
    func testFullNameWithNilInputFirtsName() throws {
        // get fullname
        let fullName = fullName(firstName: "Nunu", lastName: nil)
        
        // assert test case return empty
        XCTAssertEqual(fullName, "Nunu", "Fullname should handle nil input correctly")
    }
    
    func testFullNameWithNilInputLastName() throws {
        // get fullname
        let fullName = fullName(firstName: nil, lastName: "Nugraha")
        
        // assert test case return empty
        XCTAssertEqual(fullName, "Nugraha", "Fullname should handle nil input correctly")
    }
    
    func testFullNameWithFirstName() throws {
        
        // Inisial Variable
        let firstName = ""
        let lastName = "Nugraha"
        
        // expected result should only return lastName without whitelinespace
        let expectedResult = "Nugraha"
        
        // get fullname
        let fullName = fullName(firstName: firstName, lastName: lastName)
        
        // assert test case for input firstname is Empty
        XCTAssertEqual(fullName, expectedResult, "With empty input on firstname, fullname should handle it correctly")
    }
    
    func testFullNameWithLastName() throws {
        
        // Inisial Variable
        let firstName = "Dorothy"
        let lastName = "Putri Anita"
        
        // expected result should only return lastName without whitelinespace
        let expectedResult = "Dorothy Putri Anita"
        
        // get fullname
        let fullName = fullName(firstName: firstName, lastName: lastName)
        
        // assert test case for input firstname is Empty
        XCTAssertEqual(fullName, expectedResult, "With more than 3 words of name, fullname should handle it correctly")
        
    }
    
    func testFullNameWithThridNameIsNull() throws {
        
        // Inisial Variable
        let firstName = "Dorothy"
        let lastName = ""
        
        // expected result should only return lastName without whitelinespace
        let expectedResult = "Dorothy"
        
        // get fullname
        let fullName = fullName(firstName: firstName, lastName: lastName)
        
        // assert test case for input firstname is Empty
        XCTAssertEqual(fullName, expectedResult, "With empty input on lastName, fullname should handle it correctly")
        
    }
    
    func testFullNameWithSpecialCharacter() throws {
        let fullName = fullName(firstName: "Nuñu", lastName: "Nugraha")
        XCTAssertEqual(fullName, "Nuñu Nugraha")
    }
    
    func testFullNameWithExtraWhitespace() throws {
        let fullName = fullName(firstName: "  Nuñu", lastName: "Nugraha  ")
        XCTAssertEqual(fullName, "Nuñu Nugraha")
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        print("Finish FullNameTest test.")
    }

}
