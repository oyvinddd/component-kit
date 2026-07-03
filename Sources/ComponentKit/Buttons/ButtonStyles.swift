//
//  File.swift
//  ComponentKit
//
//  Created by Øyvind Hauge on 03/07/2026.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(.white)
            .font(.headline)
            .padding(16)
            .frame(maxWidth: .infinity)
            .background(
                Color(Color.accent)
                    .opacity(configuration.isPressed ? 0.7 : 1.0)
            )
            .clipShape(
                RoundedRectangle(cornerRadius: 8)
            )
    }
}

extension ButtonStyle where Self == PrimaryButtonStyle {
    
    static var primary: PrimaryButtonStyle {
        return PrimaryButtonStyle()
    }
}
