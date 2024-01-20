//
//  SignUpWebServiceTests.swift
//  PhotoApp-UnitTestingDemoTests
//
//  Created by Ibrahim Hamed on 20/01/2024.
//

import XCTest
@testable import PhotoApp_UnitTestingDemo

final class SignUpWebServiceTests: XCTestCase {

    var sut: SignUpWebService!
    
    override func setUpWithError() throws {
        sut = SignUpWebService()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testSignUpWebService_WhenGivenSuccessResponse_ReturnSuccess(){
        // Arrange
        let signUpFormRequestModel = SignUpFormRequestModel(firstName: "Ibrahim", lastName: "Hamed", email: "ibrahim@apple.com", password: "123456@@")
        sut.signUp(with: signUpFormRequestModel) { (signUpFormResponseModel, error) in
            
        }
    }

}
