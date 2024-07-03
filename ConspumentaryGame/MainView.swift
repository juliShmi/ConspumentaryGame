//
//  MainView.swift
//  ConspumentaryGame
//
//  Created by Iuliia Shmitko on 01/07/2024.
//

import SwiftUI

struct MainView: View {

    var body: some View {
        TabView {
            PressCardView()
                .tabItem { Label("Press Card", systemImage: "person.text.rectangle") }
            AttributesView()
                .tabItem { Label("Attrirbutes", systemImage: "dice") }
        }
    }
}

#Preview {
    MainView().environmentObject(Character.characterExample)
}
