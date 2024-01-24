//
//  GetStringFromIndexTest.swift
//  PlaygroundAjaTests
//
//  Created by Nunu Nugraha on 24/01/24.
//

import XCTest
@testable import PlaygroundAja

final class GetStringFromIndexTest: XCTestCase {

    override func setUpWithError() throws {
        print("Memulai GetStringFromIndexTest test.")
    }
    
    func testFuncGetCharFromStringByIndex() throws {
        // arrange
        let str = "Dorothy Putri"
        let index = 2
        
        // act
        let getChar = getCharFromString(str, index)
        
        // expected result
        let expectedResult: Character = "r"
        
        // Assert
        XCTAssertEqual(getChar, expectedResult)
    }
    
    func testFuncIsPalindrome() throws {
        // arrange
        let str = "A man, a plan&$, a cana**l: Panama"
        
        // act
        let result = isPalindrome(str)
        
        // expected result
        let expectedResult: Bool = true
        
        // Assert
        XCTAssertEqual(result, expectedResult)
    }

    override func tearDownWithError() throws {
        print("Finish GetStringFromIndexTest test.")
    }


}
