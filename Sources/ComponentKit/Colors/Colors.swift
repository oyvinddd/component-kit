//
//  Colors.swift
//  ComponentKit
//
//  Created by Øyvind Hauge on 04/07/2026.
//

import SwiftUI

@MainActor public enum Colors {
    
    static var config = Config.default
    
    struct Config {
        
        var brand: Brand
        
        var text: Text
        
        var background: Background
        
        var border: Border
        
        var button: Button
        
        var input: Input
        
        var status: Status
        
        static let `default` = Config(
            brand: .init(
                primary: .blue,
                secondary: .green
            ),
            text: .init(
                primary: .primary,
                secondary: .secondary,
                disabled: .gray,
                inverse: .white
            ),
            background: .init(
                primary: .white,
                secondary: Color(.systemGray6),
                surface: Color(.secondarySystemBackground)
            ),
            border: .init(
                primary: .gray,
                focused: .blue,
                disabled: .gray.opacity(0.5)
            ),
            button: .init(
                primaryBackground: .blue,
                primaryForeground: .white,
                primaryDisabledBackground: .gray,
                primaryDisabledForeground: .white.opacity(0.6),
                secondaryBackground: .clear,
                secondaryForeground: .blue,
                secondaryBorder: .blue
            ),
            input: .init(
                background: .clear,
                foreground: .black,
                placeholder: .red,
                border: .pink,
                focusedBorder: .blue,
                errorBorder: .red,
                disabledBorder: .gray,
                disabledBackground: .gray
            ),
            status: .init(
                success: .green,
                warning: .orange,
                error: .red,
                info: .blue
            )
        )
    }
    
    @MainActor struct Brand {
        
        var primary: Color
        
        var secondary: Color
    }
    
    @MainActor struct Text {
        
        var primary: Color
        
        var secondary: Color
        
        var disabled: Color
        
        var inverse: Color
    }
    
    @MainActor struct Background {
        
        var primary: Color
        
        var secondary: Color
        
        var surface: Color
    }
    
    @MainActor struct Border {
        
        var primary: Color
        
        var focused: Color
        
        var disabled: Color
    }
    
    @MainActor struct Button {
        
        var primaryBackground: Color
        
        var primaryForeground: Color
        
        var primaryDisabledBackground: Color
        
        var primaryDisabledForeground: Color
        
        var secondaryBackground: Color
        
        var secondaryForeground: Color
        
        var secondaryBorder: Color
    }
    
    @MainActor struct Input {

        var background: Color

        var foreground: Color

        var placeholder: Color

        var border: Color

        var focusedBorder: Color

        var errorBorder: Color

        var disabledBorder: Color

        var disabledBackground: Color
    }
    
    @MainActor struct Status {
        
        var success: Color
        
        var warning: Color
        
        var error: Color
        
        var info: Color
    }
}

// MARK: - Computed properties for use in UI

extension Colors.Brand {
    
    static var primary: Color { Colors.config.brand.primary }
    
    static var secondary: Color { Colors.config.brand.secondary }
}

extension Colors.Text {
    
    static var primary: Color { Colors.config.text.primary }
    
    static var secondary: Color { Colors.config.text.secondary }
    
    static var disabled: Color { Colors.config.text.disabled }
    
    static var inverse: Color { Colors.config.text.inverse }
}

extension Colors.Background {
    
    static var primary: Color { Colors.config.background.primary }
    
    static var secondary: Color { Colors.config.background.secondary }
    
    static var surface: Color { Colors.config.background.surface }
}

extension Colors.Border {
    
    static var primary: Color { Colors.config.border.primary }
    
    static var focused: Color { Colors.config.border.focused }
    
    static var disabled: Color { Colors.config.border.disabled }
}

extension Colors.Button {
    
    static var primaryBackground: Color { Colors.config.button.primaryBackground }
    
    static var primaryForeground: Color { Colors.config.button.primaryForeground }
    
    static var primaryDisabledBackground: Color { Colors.config.button.primaryDisabledBackground }
    
    static var primaryDisabledForeground: Color { Colors.config.button.primaryDisabledForeground }
    
    static var secondaryBackground: Color { Colors.config.button.secondaryBackground }
    
    static var secondaryForeground: Color { Colors.config.button.secondaryForeground }
    
    static var secondaryBorder: Color { Colors.config.button.secondaryBorder }
}

extension Colors.Input {
    
    static var background: Color { Colors.config.input.background }

    static var foreground: Color { Colors.config.input.foreground }

    static var placeholder: Color { Colors.config.input.placeholder }

    static var border: Color { Colors.config.input.border }

    static var focusedBorder: Color { Colors.config.input.focusedBorder }

    static var errorBorder: Color { Colors.config.input.errorBorder }

    static var disabledBorder: Color { Colors.config.input.disabledBorder }

    static var disabledBackground: Color { Colors.config.input.disabledBackground }
}

extension Colors.Status {
    
    static var success: Color { Colors.config.status.success }
    
    static var warning: Color { Colors.config.status.warning }
    
    static var error: Color { Colors.config.status.error }
    
    static var info: Color { Colors.config.status.info }
}
