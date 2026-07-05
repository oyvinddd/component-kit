//
//  SwiftUIView.swift
//  ComponentKit
//
//  Created by Øyvind Hauge on 05/07/2026.
//

import SwiftUI

struct LoadingDotsView: View {
    
    @State private var phase: Double = 0
    
    private let dotCount = 3
    private let amplitude = 0.2
    
    var body: some View {
        HStack(spacing: 6) {
            ForEach(0..<dotCount, id: \.self) { index in
                Circle()
                    .fill(Colors.Button.primaryForeground)
                    .frame(width: 8, height: 8)
                    .scaleEffect(scale(for: index))
                    //.opacity(0.6 + 0.4 * (scale(for: 2-index) - 0.65))
            }
        }
        .task {
            while !Task.isCancelled {
                try? await Task.sleep(for: .milliseconds(16)) // ~60 FPS
                phase += 0.13
            }
        }
    }
    
    private func scale(for index: Int) -> CGFloat {
        let phaseOffset = (2 * .pi / Double(dotCount)) * Double((dotCount - 1) - index)
        let value = sin(phase + phaseOffset)
        return 1 + amplitude * value
    }
}

#Preview {
    LoadingDotsView()
}
