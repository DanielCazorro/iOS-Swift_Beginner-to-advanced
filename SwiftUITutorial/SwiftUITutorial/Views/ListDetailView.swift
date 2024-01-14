//
//  ListDetailView.swift
//  SwiftUITutorial
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer: Programmer
    
    var body: some View {
        VStack {
            programmer.avatar
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: Color.gray, radius: 5)
            Text(programmer.name)
                .font(.largeTitle)
            Text(programmer.languages)
                .font(.title)
            Spacer()
        }
    }
}

#Preview {
    ListDetailView(programmer: Programmer(id: 0, name: "Daniel", languages: "Swift", avatar: Image(systemName: "person.fill"), favorite: true))
}
