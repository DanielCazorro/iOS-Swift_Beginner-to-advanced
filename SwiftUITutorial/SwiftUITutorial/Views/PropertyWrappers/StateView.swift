//
//  StateView.swift
//  SwiftUITutorial
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import SwiftUI


class UserData: ObservableObject {
    
    @Published var name = "Daniel"
    @Published var age = 34
}

struct StateView: View {
    

    
    @State private var value = 0
    @State private var selection: Int?
    @StateObject private var user = UserData()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("El valor actual es \(value)")
                Button("Suma 1") {
                    value += 1
                }
                Text("Mi nombre \(user.name) y mi edad \(user.age)")
                
                Button("Actualizar datos") {
                    user.name = "Daniel San"
                    user.age = 31
                }
                
                NavigationLink(destination: BindingView(value: $value, user: user), tag: 1, selection: $selection) {
                    Button("Ir a BindingView") {
                        selection = 1
                    }
                }
                
            }.navigationTitle("StateView")
        }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView().environmentObject(UserData())
    }
}
