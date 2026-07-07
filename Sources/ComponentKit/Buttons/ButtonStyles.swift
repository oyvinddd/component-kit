//
//  PrimaryButtonStyle.swift
//  ComponentKit
//
//  Created by Øyvind Hauge on 03/07/2026.
//

import SwiftUI

public enum ButtonState {
    case idle, loading, disabled
}

public struct PrimaryButtonStyle: ButtonStyle {
    
    private let state: ButtonState
    
    private var isLoading: Bool { state == .loading }
    
    private var backgroundColor: Color {
        switch state {
        case .disabled:
            Colors.Button.primaryDisabledBackground
        default:
            Colors.Button.primaryBackground
        }
    }
    
    public init(state: ButtonState = .idle) {
        self.state = state
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label
                .opacity(isLoading ? 0.0 : 1.0)
            if isLoading {
                LoadingDotsView()
            }
        }
        .foregroundStyle(Colors.Button.primaryForeground)
        .font(.headline)
        .padding(16)
        .frame(maxWidth: .infinity)
        .background(
            Color(backgroundColor)
                .opacity(configuration.isPressed ? Measurements.buttonPressedOpacity : 1.0)
        )
        .clipShape(RoundedRectangle(cornerRadius: Measurements.cornerRadius))
        .buttonPressEffect(configuration.isPressed)
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
                        .opacity(configuration.isPressed ? Measurements.buttonPressedOpacity : 1.0),
                            lineWidth: 1
                    )
            }
            .buttonPressEffect(configuration.isPressed)
    }
}

public extension ButtonStyle where Self == PrimaryButtonStyle {
    
    static func primary(state: ButtonState = .idle) -> PrimaryButtonStyle {
        return PrimaryButtonStyle(state: state)
    }
}

public extension ButtonStyle where Self == SecondaryButtonStyle {
    
    static var secondary: SecondaryButtonStyle {
        return SecondaryButtonStyle()
    }
}
