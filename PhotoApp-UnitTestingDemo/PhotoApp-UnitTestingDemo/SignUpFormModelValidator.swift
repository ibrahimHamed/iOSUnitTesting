//
//  SignUpFormModelValidator.swift
//  PhotoApp-UnitTestingDemo
//
//  Created by Ibrahim Hamed on 04/01/2024.
//

import Foundation

class SignUpFormModelValidator {
    
    func isFirstNameValid(_ firstName: String) -> Bool {
        if firstName.count < SignUpConstants.firstNameMinLength || firstName.count > SignUpConstants.firstNameMaxLength {
            return false
        }
        return true
    }
    
    func isLastNameValid(_ lastName: String) -> Bool {
        if lastName.count < SignUpConstants.lastNameMinLength || lastName.count > SignUpConstants.lastNameMaxLength {
            return false
        }
        return true
    }

    func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with: email)
    }


    
}
