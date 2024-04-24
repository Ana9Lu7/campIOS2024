//
//  LoginViewModel.swift
//  campios2024
//
//  Created by Ana Luiza on 23/04/24.
//

import Foundation

class LoginViewModel: ObservableObject {

    @Published var username: String = ""
    @Published var password: String = ""
    @Published var canContinue = false

    let loginRequestProtocol: LoginRequestProtocol

    init(
        username: String = "",
        password: String = "",
        loginRequestProtocol: LoginRequestProtocol = LoginRequest()
    ) {
        self.username = username
        self.password = password
        self.loginRequestProtocol = loginRequestProtocol
    }

    func enterButtonAction() {
        loginRequestProtocol.login(username: username, password: password) { _ in }
    }
}
