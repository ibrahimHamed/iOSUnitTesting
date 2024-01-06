//
//  SignUpFormModelValidatorTest.swift
//  PhotoApp-UnitTestingDemoTests
//
//  Created by Ibrahim Hamed on 04/01/2024.
//

import XCTest
@testable import PhotoApp_UnitTestingDemo

final class SignUpFormModelValidatorTest: XCTestCase {
    
    var sut: SignUpFormModelValidator!

    override func setUpWithError() throws {
        sut = SignUpFormModelValidator()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testSignUpFormModelValidator_withValidFirstName_ShouldReturnTrue(){
        // Arrange
//        let sut = SignUpFormModelValidator()
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Ibrahim")
        // Assert
        XCTAssertTrue(isFirstNameValid,"isFirstNameValid() should return true but it returned false")
    }
    
    func testSignUpFormModelValidator_withTooShortFirstName_ShouldReturnFalse(){
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "i")
        
        // Assert
        XCTAssertFalse(isFirstNameValid, "isFirstNameValid() should have return false for a first name that is shorten than \(SignUpConstants.firstNameMinLength) characters but it has return true")
    }
    
    func testSignUpFormModelValidator_withTooLongFirstName_ShouldReturnFalse(){
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "IbrahimMohamedHamed")
        
        // Assert
        XCTAssertFalse(isFirstNameValid, "isFirstNameValid() should have return false for a first name that is longer than \(SignUpConstants.firstNameMaxLength) characters but it has return true")
    }
}
