//
//  HomeView.swift
//  campios2024
//
//  Created by Ana Luiza on 24/04/24.
//

import Foundation
import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Seja bem vind@!")
                .foregroundStyle(.white)
                .font(.largeTitle)
        }
    }
}
