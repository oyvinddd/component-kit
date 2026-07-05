//
//  Measurements.swift
//  ComponentKit
//
//  Created by Øyvind Hauge on 03/07/2026.
//

import SwiftUI

@MainActor public struct Measurements {
    
    static var shared = Measurements(cornerRadius: 8.0)
    
    var cornerRadius: CGFloat
}

extension Measurements {
    
    static var cornerRadius: CGFloat { Measurements.shared.cornerRadius }
}
