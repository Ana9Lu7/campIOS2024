//
//  LoginResponse.swift
//  campios2024
//
//  Created by Ana Luiza on 24/04/24.
//

import Foundation

public struct LoginResponse: Decodable {

    let token: String

    enum CodingKeys: String, CodingKey {
        case token = "access_token"
    }
}
