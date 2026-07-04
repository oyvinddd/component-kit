//
//  TextFieldStyles.swift
//  ComponentKit
//
//  Created by Øyvind Hauge on 10/06/2026.
//

import SwiftUI

@MainActor struct PrimaryTextFieldStyle: @MainActor TextFieldStyle {
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .foregroundStyle(Colors.Input.foreground)
            .font(.system(size: 17))
            .padding(16)
            .background(RoundedRectangle(cornerRadius: 8).fill(Colors.Input.background))
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Colors.Input.border.opacity(0.25), lineWidth: 1)
            }
    }
}

extension TextFieldStyle where Self == PrimaryTextFieldStyle {

    static var primary: PrimaryTextFieldStyle {
        return PrimaryTextFieldStyle()
    }
}
