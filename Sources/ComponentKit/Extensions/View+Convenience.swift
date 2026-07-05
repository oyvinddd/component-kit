//
//  View+Convenience.swift
//  ComponentKit
//
//  Created by Øyvind Hauge on 05/07/2026.
//

import SwiftUI

extension View {

    func buttonPressEffect(_ isPressed: Bool) -> some View {
        self
            .scaleEffect(isPressed ? Measurements.buttonPressedScale : 1.0)
            .animation(.smooth(duration: 0.12), value: isPressed)
    }
}
