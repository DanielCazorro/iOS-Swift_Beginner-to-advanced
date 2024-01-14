//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import SwiftUI

let programmers: [Programmer] = [
    Programmer(id: 0, name: "Daniel", languages: "Swift", avatar: Image(systemName: "person.fill")),
    Programmer(id: 1, name: "Ana", languages: "Python", avatar: Image(systemName: "person.fill")),
    Programmer(id: 2, name: "Carlos", languages: "JavaScript", avatar: Image(systemName: "person.fill")),
    Programmer(id: 3, name: "Laura", languages: "Java", avatar: Image(systemName: "person.fill")),
    Programmer(id: 4, name: "Diego", languages: "C#", avatar: Image(systemName: "person.fill")),
    Programmer(id: 5, name: "Elena", languages: "Ruby", avatar: Image(systemName: "person.fill"))
]

struct ListView: View {
    var body: some View {
        List(programmers, id: \.id) { programmer in
            RowView(programmer: programmer)
        }
    }
}

#Preview {
    ListView()
}
