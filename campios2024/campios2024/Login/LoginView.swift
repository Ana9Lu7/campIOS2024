//
//  ContentView.swift
//  campios2024
//
//  Created by Ana Luiza on 23/04/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                VStack {
                    VStack(spacing: 16) {
                        Text("Seja bem vind@!")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                        Text("HTTP Status Code")
                            .foregroundStyle(.white)
                            .font(.title)
                    }
                    .padding(.bottom, 48)
                    VStack(spacing: 16) {
                        InputLoginView(
                            input: $viewModel.username,
                            textFieldValue: "usuario"
                        )
                        InputLoginView(
                            input: $viewModel.password,
                            textFieldValue: "senha"
                        )
                    }
                    .padding(.bottom, 32)
                    Button {
                        viewModel.enterButtonAction()
                    } label: {
                        ZStack {
                            Capsule()
                                .fill(.black)
                                .frame(height: 48)
                            Text("ENTRAR")
                                .foregroundStyle(.white)
                        }
                    }
                    .navigationDestination(isPresented: $viewModel.canContinue) {
                        HomeView()
                    }
                    .padding(.horizontal, 16)
                }
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity
                )
                .background(
                    Color("backgroundColor")
                )
                Image("logo")
            }
        }
    }
}
//
//#Preview {
//    LoginView()
//}
