//
//  Colors.swift
//  ComponentKit
//
//  Created by Øyvind Hauge on 04/07/2026.
//

import SwiftUI

@MainActor public enum Colors {
    
    @MainActor public struct Config {
        
        public var brand: Brand
        
        public var text: Text
        
        public var background: Background
        
        public var border: Border
        
        public var button: Button
        
        public var input: Input
        
        public var status: Status
        
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
    
    @MainActor public struct Brand {
        
        public var primary: Color
        
        public var secondary: Color
    }
    
    @MainActor public struct Text {
        
        public var primary: Color
        
        public var secondary: Color
        
        public var disabled: Color
        
        public var inverse: Color
    }
    
    @MainActor public struct Background {
        
        public var primary: Color
        
        public var secondary: Color
        
        public var surface: Color
    }
    
    @MainActor public struct Border {
        
        public var primary: Color
        
        public var focused: Color
        
        public var disabled: Color
    }
    
    @MainActor public struct Button {
        
        public var primaryBackground: Color
        
        public var primaryForeground: Color
        
        public var primaryDisabledBackground: Color
        
        public var primaryDisabledForeground: Color
        
        public var secondaryBackground: Color
        
        public var secondaryForeground: Color
        
        public var secondaryBorder: Color
    }
    
    @MainActor public struct Input {

        public var background: Color

        public var foreground: Color

        public var placeholder: Color

        public var border: Color

        public var focusedBorder: Color

        public var errorBorder: Color

        public var disabledBorder: Color

        public var disabledBackground: Color
    }
    
    @MainActor public struct Status {
        
        public var success: Color
        
        public var warning: Color
        
        public var error: Color
        
        public var info: Color
    }
    
    public static var config = Config.default
    
    public static func configure(_ config: Config?) {
        self.config = config ?? Config.default
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
