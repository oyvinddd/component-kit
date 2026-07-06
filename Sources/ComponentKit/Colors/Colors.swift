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
    
    public static var primary: Color { Colors.config.brand.primary }
    
    public static var secondary: Color { Colors.config.brand.secondary }
}

extension Colors.Text {
    
    public static var primary: Color { Colors.config.text.primary }
    
    public static var secondary: Color { Colors.config.text.secondary }
    
    public static var disabled: Color { Colors.config.text.disabled }
    
    public static var inverse: Color { Colors.config.text.inverse }
}

extension Colors.Background {
    
    public static var primary: Color { Colors.config.background.primary }
    
    public static var secondary: Color { Colors.config.background.secondary }
    
    public static var surface: Color { Colors.config.background.surface }
}

extension Colors.Border {
    
    public static var primary: Color { Colors.config.border.primary }
    
    public static var focused: Color { Colors.config.border.focused }
    
    public static var disabled: Color { Colors.config.border.disabled }
}

extension Colors.Button {
    
    public static var primaryBackground: Color { Colors.config.button.primaryBackground }
    
    public static var primaryForeground: Color { Colors.config.button.primaryForeground }
    
    public static var primaryDisabledBackground: Color { Colors.config.button.primaryDisabledBackground }
    
    public static var primaryDisabledForeground: Color { Colors.config.button.primaryDisabledForeground }
    
    public static var secondaryBackground: Color { Colors.config.button.secondaryBackground }
    
    public static var secondaryForeground: Color { Colors.config.button.secondaryForeground }
    
    public static var secondaryBorder: Color { Colors.config.button.secondaryBorder }
}

extension Colors.Input {
    
    public static var background: Color { Colors.config.input.background }

    public static var foreground: Color { Colors.config.input.foreground }

    public static var placeholder: Color { Colors.config.input.placeholder }

    public static var border: Color { Colors.config.input.border }

    public static var focusedBorder: Color { Colors.config.input.focusedBorder }

    public static var errorBorder: Color { Colors.config.input.errorBorder }

    public static var disabledBorder: Color { Colors.config.input.disabledBorder }

    public static var disabledBackground: Color { Colors.config.input.disabledBackground }
}

extension Colors.Status {
    
    public static var success: Color { Colors.config.status.success }
    
    public static var warning: Color { Colors.config.status.warning }
    
    public static var error: Color { Colors.config.status.error }
    
    public static var info: Color { Colors.config.status.info }
}
