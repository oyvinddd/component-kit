// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

#Preview() {
    
    NavigationStack {
        
        ScrollView {
            
            LazyVStack(spacing: 16) {
                
                Button(action: {}) {
                    Text("Primary button")
                }
                .buttonStyle(.primary)
                
                Button(action: {}) {
                    Text("Secondary button")
                }
                .buttonStyle(.secondary)
            }
            .padding(.horizontal, 16)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Components")
    }
}
