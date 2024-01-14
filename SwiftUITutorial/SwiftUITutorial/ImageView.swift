//
//  ImageView.swift
//  SwiftUITutorial
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("481909")
                .resizable()
                .padding(50)
                .scaledToFill()
                .background(Color.gray)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth:4))
                .shadow(color: Color.gray,radius: 5)
            
            Image(systemName: "person.fill.badge.minus")
                .resizable()
                .padding(50)
        }
    }
}

#Preview {
    ImageView()
}
