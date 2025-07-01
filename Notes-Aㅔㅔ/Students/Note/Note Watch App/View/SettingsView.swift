//
//  Settings.swift
//  Note Watch App
//
//  Created by 진아현 on 7/1/25.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    //MARK: - FUNCTION
    func update() {
        lineCount = Int(value)
    }
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 8) {
            //MARK: - HEADER
            HeaderView(title: "Settings")
            
            //MARK: - ACTUAL LINE COUNT
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            //MARK: - SLIDER
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

#Preview {
    SettingsView()
}
