//
//  SignUpFormRequestModel.swift
//  PhotoApp-UnitTestingDemo
//
//  Created by Ibrahim Hamed on 20/01/2024.
//

import Foundation

struct SignUpFormRequestModel: Encodable {
    let firstName: String
    let lastName: String
    let email: String
    let password: String
}
