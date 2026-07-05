//
//  Measurements.swift
//  ComponentKit
//
//  Created by Øyvind Hauge on 03/07/2026.
//

import SwiftUI

@MainActor public struct Measurements {
    
    public static var shared = Measurements(
        cornerRadius: 8.0,
        horizontalPadding: 16.0,
        buttonPressedScale: 0.98,
        buttonPressedOpacity: 0.8
    )
    
    var cornerRadius: CGFloat
    
    var horizontalPadding: CGFloat
    
    var buttonPressedScale: CGFloat
    
    var buttonPressedOpacity: CGFloat
}

extension Measurements {
    
    public static var cornerRadius: CGFloat { Measurements.shared.cornerRadius }
    
    public static var horizontalPadding: CGFloat { Measurements.shared.horizontalPadding }
    
    public static var buttonPressedScale: CGFloat { Measurements.shared.buttonPressedScale }
    
    public static var buttonPressedOpacity: CGFloat { Measurements.shared.buttonPressedOpacity }
}
