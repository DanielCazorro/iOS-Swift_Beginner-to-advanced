//
//  EnvironmentView.swift
//  SwiftUITutorial
//
//  Created by Daniel Cazorro Frias  on 14/1/24.
//

import SwiftUI

struct EnvironmentView: View {
    
    @EnvironmentObject var user: UserData
    
    var body: some View {
        Text(user.name)
    }
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView()
            .environmentObject(UserData())
    }
}
