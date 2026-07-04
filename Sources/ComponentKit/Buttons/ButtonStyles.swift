//
//  PrimaryButtonStyle.swift
//  ComponentKit
//
//  Created by Øyvind Hauge on 03/07/2026.
//

import SwiftUI

public struct PrimaryButtonStyle: ButtonStyle {
    
    @Environment(\.isEnabled) private var isEnabled
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(Colors.Button.primaryForeground)
            .font(.headline)
            .padding(16)
            .frame(maxWidth: .infinity)
            .background(
                Color(
                    isEnabled
                    ? Colors.Button.primaryBackground
                    : Colors.Button.primaryDisabledBackground
                ).opacity(configuration.isPressed ? 0.7 : 1.0)
            )
            .clipShape(RoundedRectangle(cornerRadius: Measurements.cornerRadius))
    }
}

public struct SecondaryButtonStyle: ButtonStyle {
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(Colors.Button.secondaryForeground)
            .font(.headline)
            .padding(16)
            .frame(maxWidth: .infinity)
            .background(Colors.Button.secondaryBackground)
            .overlay {
                RoundedRectangle(cornerRadius: Measurements.cornerRadius)
                    .stroke(Color(Colors.Button.secondaryForeground)
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
