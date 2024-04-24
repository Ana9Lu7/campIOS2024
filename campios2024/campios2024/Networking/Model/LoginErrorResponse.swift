//
//  LoginErrorResponse.swift
//  campios2024
//
//  Created by Ana Luiza on 24/04/24.
//

import Foundation

public struct LoginErrorResponse: Decodable {

    public let error: String
    public let error_description: String

    enum CodingKeys: String, CodingKey {
        case error
        case error_description = "error_description"
    }
}
