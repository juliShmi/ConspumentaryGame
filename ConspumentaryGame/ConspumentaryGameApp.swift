//
//  ConspumentaryGameApp.swift
//  ConspumentaryGame
//
//  Created by Iuliia Shmitko on 01/07/2024.
//

import SwiftUI

@main
struct ConspumentaryGameApp: App {
    
    @StateObject var character = Character.characterExample

    var body: some Scene {
        WindowGroup {
            MainView()
        }.environmentObject(character)
    }
}
