//
//  MainView.swift
//  SwiftUITutorial
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            VStack{
                MapView().frame(height: 400)
                Divider().padding()
                ImageView()
                ContentView()
            }
        }
    }
}

#Preview {
    MainView()
}
