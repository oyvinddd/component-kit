//
//  Config.swift
//  ComponentKit
//
//  Created by Øyvind Hauge on 03/07/2026.
//

import SwiftUI

@MainActor public final class Config {
    
    static let global: Config = Config()
    
    public let cornerRadius: CGFloat = 8.0
    
    public let primaryButton = PrimaryButtonColors(
        background: .black,
        foregound: .white
    )
    
    public let secondaryButton = SecondaryButtonColors(
        background: .clear,
        foreground: .black,
        outline: .black
    )
}

@MainActor public final class PrimaryButtonColors {
    
    let background: Color
    
    let foregound: Color
    
    init(background: Color, foregound: Color) {
        self.background = background
        self.foregound = foregound
    }
}

@MainActor public final class SecondaryButtonColors {
    
    let background: Color
    
    let foreground: Color
    
    let outline: Color
    
    init(background: Color, foreground: Color, outline: Color) {
        self.background = background
        self.foreground = foreground
        self.outline = outline
    }
}
