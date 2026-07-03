//
//  PrimaryButtonStyle.swift
//  ComponentKit
//
//  Created by Øyvind Hauge on 03/07/2026.
//

import SwiftUI

public struct PrimaryButtonStyle: ButtonStyle {
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(Config.global.primaryButton.foregound)
            .font(.headline)
            .padding(16)
            .frame(maxWidth: .infinity)
            .background(
                Color(Config.global.primaryButton.background)
                    .opacity(configuration.isPressed ? 0.7 : 1.0)
            )
            .clipShape(RoundedRectangle(cornerRadius: Config.global.cornerRadius))
    }
}

public struct SecondaryButtonStyle: ButtonStyle {
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(Config.global.secondaryButton.foreground)
            .font(.headline)
            .padding(16)
            .frame(maxWidth: .infinity)
            .background(Config.global.secondaryButton.background)
            .overlay {
                RoundedRectangle(cornerRadius: Config.global.cornerRadius)
                    .stroke(Color(Config.global.secondaryButton.background)
                        .opacity(configuration.isPressed ? 0.7 : 1.0),
                            lineWidth: 1
                    )
            }
    }
}

extension ButtonStyle where Self == PrimaryButtonStyle {
    
    public static var primary: PrimaryButtonStyle {
        return PrimaryButtonStyle()
    }
}

extension ButtonStyle where Self == SecondaryButtonStyle {
    
    public static var secondary: SecondaryButtonStyle {
        return SecondaryButtonStyle()
    }
}
