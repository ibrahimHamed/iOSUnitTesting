//
//  SignUpFormModelValidator.swift
//  PhotoApp-UnitTestingDemo
//
//  Created by Ibrahim Hamed on 04/01/2024.
//

import Foundation

class SignUpFormModelValidator {
    
    func isFirstNameValid(firstName: String) -> Bool {
        if firstName.count > 2 {
            return true
        }
        return false
    }
    
}
