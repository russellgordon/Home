//
//  ContentView.swift
//  Home
//
//  Created by Russell Gordon on 2024-01-12.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    let firstGradientColors = Gradient(colors: [Color.blue, Color.yellow])
    
    // MARK: Computed properties
    var body: some View {
        ZStack {
            
            // Background
            LinearGradient(
                gradient: firstGradientColors,
                startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
                endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/
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
