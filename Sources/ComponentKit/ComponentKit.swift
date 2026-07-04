// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

#Preview() {
    
    @Previewable @State var foo: String = ""
    
    NavigationStack {
        
        ScrollView {
            
            LazyVStack(spacing: 16) {
                
                // MARK: - Buttons
                
                Button(action: {}) {
                    Text("Primary button")
                }
                .buttonStyle(.primary)
                
                Button(action: {}) {
                    Text("Primary button (disabled)")
                }
                .buttonStyle(.primary)
                .disabled(true)
                
                Button(action: {}) {
                    Text("Secondary button")
                }
                .buttonStyle(.secondary)
                
                // MARK: - Text fields
                
                TextField("Text field", text: $foo)
                    .textFieldStyle(.primary)
            }
            .padding(.horizontal, 16)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Components")
    }
}
