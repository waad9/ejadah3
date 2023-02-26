//
//  User.swift
//  signup9
//
//  Created by waad. on 28/07/1444 AH.
//

import Foundation

struct User: Codable {
    var username: String
    var email: String
    var signUpDate = Date.now
}
