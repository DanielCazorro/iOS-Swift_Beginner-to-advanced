//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .trailing, spacing: 20) {
            Text("Welcome to Jurassic World")
                .font(.largeTitle)
                .foregroundStyle(.blue)
                .padding()
                .background(Color.gray)
            
            Spacer()
            
            ZStack {
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.gray).padding()
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.green).padding(40)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.red).padding(60)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.blue).padding(80)
            }
            
            HStack {
                Text("Hola mundo")
                    .padding()
                    .background(Color.red)
                
                Spacer()
                
                Text("Gomu gomu no")
                    .padding()
                    .background(Color.orange)
            }
            
            Text("6")
            Text("7")
            Text("8")
            Text("9")
            Text("10")
            
        }.background(Color.yellow)
    }
}

#Preview {
    ContentView()
}
