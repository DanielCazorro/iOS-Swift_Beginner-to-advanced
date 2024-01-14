//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import SwiftUI

final class ProgrammersModelDAta: ObservableObject {
    
    @Published var programmers: [Programmer] = [
        Programmer(id: 0, name: "Daniel", languages: "Swift", avatar: Image(systemName: "person.fill"), favorite: true),
        Programmer(id: 1, name: "Ana", languages: "Python", avatar: Image(systemName: "face.smiling.fill"), favorite: false),
        Programmer(id: 2, name: "Carlos", languages: "JavaScript", avatar: Image(systemName: "person.crop.circle.fill"), favorite: true),
        Programmer(id: 3, name: "Laura", languages: "Java", avatar: Image(systemName: "person.2.fill"), favorite: false),
        Programmer(id: 4, name: "Diego", languages: "C#", avatar: Image(systemName: "person.circle.fill"), favorite: true),
        Programmer(id: 5, name: "Elena", languages: "Ruby", avatar: Image(systemName: "person.3.fill"), favorite: false),
        Programmer(id: 6, name: "Fernando", languages: "Kotlin", avatar: Image(systemName: "person.badge.plus.fill"), favorite: true),
        Programmer(id: 7, name: "Isabel", languages: "TypeScript", avatar: Image(systemName: "person.crop.rectangle.fill"), favorite: false),
        Programmer(id: 8, name: "Gabriel", languages: "PHP", avatar: Image(systemName: "person.crop.square.fill"), favorite: true),
        Programmer(id: 9, name: "Monica", languages: "Rust", avatar: Image(systemName: "person.2.circle.fill"), favorite: false),
        Programmer(id: 10, name: "Hector", languages: "Go", avatar: Image(systemName: "person.crop.circle.badge.checkmark.fill"), favorite: true),
        Programmer(id: 11, name: "Sofia", languages: "SwiftUI", avatar: Image(systemName: "person.3.circle.fill"), favorite: false),
        Programmer(id: 12, name: "Javier", languages: "Dart", avatar: Image(systemName: "person.crop.circle.badge.xmark.fill"), favorite: true),
        Programmer(id: 13, name: "Alicia", languages: "HTML", avatar: Image(systemName: "person.crop.square.badge.exclamationmark.fill"), favorite: false),
        Programmer(id: 14, name: "Pedro", languages: "CSS", avatar: Image(systemName: "person.fill.checkmark"), favorite: true),
    ]
}

struct ListView: View {
    
    @EnvironmentObject var programmersModelData: ProgrammersModelDAta
    @State private var showFavorites = false
    
    private var filteredProgrammers: [Programmer] {
        return programmersModelData.programmers.filter { programmer in
            return !showFavorites || programmer.favorite
        }
    }
    
    var body: some View {
        
        VStack {
            
            Toggle(isOn: $showFavorites) {
                Text("Mostrar favoritos")
            }
            .padding()
            
            NavigationView {
                
                List(filteredProgrammers, id: \.id) {
                    programmer in
                    NavigationLink(destination: ListDetailView(programmer: programmer, favorite: programmersModelData.programmers[programmer.id].favorite)) {
                        RowView(programmer: programmer)
                    }
                }
                .navigationTitle("Programmers")
            }
        }
    }
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammersModelDAta())
    }
}
