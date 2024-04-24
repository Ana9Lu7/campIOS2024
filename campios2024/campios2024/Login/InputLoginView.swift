//
//  InputLoginView.swift
//  campios2024
//
//  Created by Ana Luiza on 23/04/24.
//

import Foundation
import SwiftUI

struct InputLoginView: View {
    
    var input: Binding<String>
    var textFieldValue: String
    
    var body: some View {
        TextField(
            textFieldValue,
            text: input
        )
        .padding(.vertical, 13)
        .padding(.leading, 24)
        .background(
            Capsule()
                .fill(.white)
        )
        .padding(.horizontal, 16)
    }
}
