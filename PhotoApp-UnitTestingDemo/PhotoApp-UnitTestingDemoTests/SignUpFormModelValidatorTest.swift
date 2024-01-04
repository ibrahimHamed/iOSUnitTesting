//
//  SignUpFormModelValidatorTest.swift
//  PhotoApp-UnitTestingDemoTests
//
//  Created by Ibrahim Hamed on 04/01/2024.
//

import XCTest
@testable import PhotoApp_UnitTestingDemo

final class SignUpFormModelValidatorTest: XCTestCase {

    override func setUpWithError() throws {

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSignUpFormModelValidator_withValidFirstName_ShouldReturnTrue(){
        // Arrange
        let sut = SignUpFormModelValidator()
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Ibrahim")
        // Assert
        XCTAssertTrue(isFirstNameValid,"isFirstNameValid() should return true but it returned false")
    }
}
