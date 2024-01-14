//
//  BindingView.swift
//  SwiftUITutorial
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import SwiftUI

struct BindingView: View {
    
    @Binding var value: Int
    @ObservedObject var user: UserData
    @State private var selection: Int?
    
    var body: some View {
        VStack {
            Text("El valor actual es \(value)")
            Button("Suma 2") {
                value += 2
            }
            Button("Actualizar datos") {
                user.name = "Daniel San San"
                user.age = 30
            }
            NavigationLink(destination: EnvironmentView(), tag: 1, selection: $selection) {
                Button("Ir a EnvironmentView") {
                    selection = 1
                }
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(value: .constant(5), user: UserData())
    }
}
