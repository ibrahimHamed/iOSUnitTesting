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
    
    // MARK: - FistName
    func testSignUpFormModelValidator_withValidFirstName_ShouldReturnTrue(){
        // Arrange
//        let sut = SignUpFormModelValidator()
        // Act
        let isFirstNameValid = sut.isFirstNameValid("Ibrahim")
        // Assert
        XCTAssertTrue(isFirstNameValid,"isFirstNameValid() should return true but it returned false")
    }
    
    func testSignUpFormModelValidator_withTooShortFirstName_ShouldReturnFalse(){
        // Act
        let isFirstNameValid = sut.isFirstNameValid("i")
        
        // Assert
        XCTAssertFalse(isFirstNameValid, "isFirstNameValid() should have return false for a first name that is shorten than \(SignUpConstants.firstNameMinLength) characters but it has return true")
    }
    
    func testSignUpFormModelValidator_withTooLongFirstName_ShouldReturnFalse(){
        // Act
        let isFirstNameValid = sut.isFirstNameValid("IbrahimMohamedHamed")
        
        // Assert
        XCTAssertFalse(isFirstNameValid, "isFirstNameValid() should have return false for a first name that is longer than \(SignUpConstants.firstNameMaxLength) characters but it has return true")
    }
    
    // MARK: - last name
    func testSignUpFormModelValidator_withValidLastName_ShouldReturnTrue(){
        // Arrange
        // Act
        let isLastNameValid = sut.isLastNameValid("Mohamed")
        // Assert
        XCTAssertTrue(isLastNameValid,"isLastNameValid() should return true but it returned false")
    }
    
    func testSignUpFormModelValidator_withTooShortLastName_ShouldReturnFalse(){
        // Arrange
        
        // Act
        let isValidLastName = sut.isLastNameValid("M")
        // Assert
        XCTAssertFalse(isValidLastName)
    }
    
    func testSignUpFormModelValidator_withTooLongLastName_ShouldReturnFalse(){
        // Arrange
        
        // Act
        let isValidLastName = sut.isLastNameValid("Mohamed Ahmed Saeed")
        // Assert
        XCTAssertFalse(isValidLastName)
    }
    
    
    // MARK: - email
    func testSignUpFormModelValidator_withValidEmail_ShouldReturnTrue(){
        // Arrange
        
        // Act
        let validEmails = ["test@example.com", "ibrahim@gmail.eg", "ahmed@example.co.sa"]
        // Assert
        for email in validEmails {
            XCTAssertTrue(sut.isValidEmail(email), "Valid email \(email) failed validation")
        }
    }
    
    func testSignUpFormModelValidator_withInvalidEmail_ShouldReturnFalse(){
        // Arrange
        
        // Act
        let validEmails = ["test@example", "ibrahim@gmail@eg", "ahmed@example.c","ahmed.com", "Muhammed@.com"]
        // Assert
        for email in validEmails {
            XCTAssertFalse(sut.isValidEmail(email), "Invalid email \(email) passed validation")
        }
    }
}
