//
//  SettingsView.swift
//  Notes Watch App
//
//  Created by Shubham Kumar on 05/01/25.
//

import SwiftUI

struct SettingsView: View {
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    func update() {
        lineCount = Int(value)
    }
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 8) {
            HeaderView(title: "Settings")
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            Slider(value: Binding(get: {
                self.value
            }, set: {(newValue) in
                self.value = newValue
                self.update()
            }), in: 1...4, step: 1)
            .accentColor(.accentColor)
        }
    }
}

// MARK: - PREVIEW

#Preview {
    SettingsView()
}
