//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import SwiftUI

let programmers: [Programmer] = [
    Programmer(id: 0, name: "Daniel", languages: "Swift", avatar: Image(systemName: "person")),
    Programmer(id: 1, name: "Ana", languages: "Python", avatar: Image(systemName: "person.fill")),
    Programmer(id: 2, name: "Carlos", languages: "JavaScript", avatar: Image(systemName: "face.smiling.fill")),
    Programmer(id: 3, name: "Laura", languages: "Java", avatar: Image(systemName: "person.2.fill")),
    Programmer(id: 4, name: "Diego", languages: "C#", avatar: Image(systemName: "person.circle.fill")),
    Programmer(id: 5, name: "Elena", languages: "Ruby", avatar: Image(systemName: "face.smiling"))
]

struct ListView: View {
    var body: some View {
        NavigationView {
            List(programmers, id: \.id) { programmer in
                NavigationLink(destination: ListDetailView(programmer: programmer)) {
                    RowView(programmer: programmer)
                }
            }.navigationTitle("Programmers")
        }
    }
}

#Preview {
    ListView()
}
