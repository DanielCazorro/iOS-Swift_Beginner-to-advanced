//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("¡Hola mundo!")
                .foregroundColor(Color.orange)
                .font(.title)
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
