//
//  ContentView.swift
//  Home
//
//  Created by Russell Gordon on 2024-01-12.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    let firstGradientColors = Gradient(colors: [.white, .blue, .deepPurple, .clear])
    let secondGradientColors = Gradient(colors: [.yellow, .deepPurple, .clear])
    
    // MARK: Computed properties
    var body: some View {
        ZStack {
            
            // Background
            Color.black
                .ignoresSafeArea()
            
            // First gradient
            RadialGradient(
                gradient: firstGradientColors,
                center: .topLeading,
                startRadius: 0,
                endRadius: 750
            )
            .ignoresSafeArea()
            
            // Second gradient
            RadialGradient(
                gradient: secondGradientColors,
                center: UnitPoint(x: 1.3, y: 1),
                startRadius: 0,
                endRadius: 1250
            )
            .ignoresSafeArea()

            
            // Foreground
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
