//
//  Config.swift
//  ComponentKit
//
//  Created by Øyvind Hauge on 03/07/2026.
//

import SwiftUI

@MainActor public enum Measurements {
    
    static private(set) var cornerRadius: CGFloat = 8.0
    
    public static func configure(cornerRadius: CGFloat) {
        self.cornerRadius = cornerRadius
    }
}

/*
@MainActor public enum PrimaryButtonColors {
    
    static private(set) var background: Color = .black
    
    static private(set) var backgroundDisabled: Color = .gray
    
    static private(set) var foregound: Color = .white
    
    static func configure(
        background: Color,
        foregound: Color
    ) {
        self.background = background
        self.foregound = foregound
    }
}

@MainActor public enum SecondaryButtonColors {
    
    static private(set) var background: Color = .clear
    
    static private(set) var foreground: Color = .black
    
    static private(set) var outline: Color = .black
    
    public static func configure(
        background: Color,
        foreground: Color,
        outline: Color
    ) {
        self.background = background
        self.foreground = foreground
        self.outline = outline
    }
}

@MainActor public enum TextFieldColors {
    
    static private(set) var background: Color = .gray
    
    static private(set) var foreground: Color = .black
    
    static private(set) var outlineIdle: Color = .gray
    
    static private(set) var outlineActive: Color = .black
    
    public static func configure(
        background: Color,
        foreground: Color,
        outlineIdle: Color,
        outlineActive: Color
    ) {
        self.background = background
        self.foreground = foreground
        self.outlineIdle = outlineIdle
        self.outlineActive = outlineActive
    }
}
*/
