//
//  SignUpFormModelValidator.swift
//  PhotoApp-UnitTestingDemo
//
//  Created by Ibrahim Hamed on 04/01/2024.
//

import Foundation

class SignUpFormModelValidator {
    
    func isFirstNameValid(firstName: String) -> Bool {
        if firstName.count < SignUpConstants.firstNameMinLength || firstName.count > SignUpConstants.firstNameMaxLength {
            return false
        }
        return true
    }
    
}
