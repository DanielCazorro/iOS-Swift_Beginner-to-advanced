//
//  RowView.swift
//  SwiftUITutorial
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        
        HStack {
            programmer.avatar
                .resizable()
                .frame(width: 50, height: 50)
                .padding(10)
            VStack(alignment: .leading) {
                Text(programmer.name)
                    .font(.title)
                Text(programmer.languages)
                    .font(.subheadline)
                
            }
            Spacer()
        }
    }
}

#Preview {
    RowView(programmer: Programmer(id: 0, name: "Daniel", languages: "Swift", avatar: Image(systemName: "person.fill")))
}
