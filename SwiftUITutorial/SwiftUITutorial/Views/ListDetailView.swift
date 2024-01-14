//
//  ListDetailView.swift
//  SwiftUITutorial
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer: Programmer
    @State var favorite: Bool
    
    var body: some View {
        VStack {
            programmer.avatar
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: Color.gray, radius: 5)
            HStack {
                
                Text(programmer.name)
                    .font(.largeTitle)
                
                Button {
                    favorite.toggle()
                } label: {
                    if favorite {
                        Image(systemName: "star.fill").foregroundStyle(.yellow)
                    } else {
                        Image(systemName: "star").foregroundStyle(.black)
                    }
                }
                
                
            }
            Text(programmer.languages)
                .font(.title)
            Spacer()
        }
    }
}

#Preview {
    ListDetailView(programmer: Programmer(id: 0, name: "Daniel", languages: "Swift", avatar: Image(systemName: "person.fill"), favorite: true), favorite: false)
}
