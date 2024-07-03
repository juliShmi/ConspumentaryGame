//
//  AttributesView.swift
//  ConspumentaryGame
//
//  Created by Iuliia Shmitko on 03/07/2024.
//

import SwiftUI

import SwiftUI

struct AttributesView: View {
    @EnvironmentObject var character: Character
    
    var body: some View {
        NavigationStack {
            List {
                Section("Attributes") {
                    ForEach(character.attributes, id:\.self) { attribute in
                        AttributeView(attribute: attribute)
                    }
                }
            }
        }
    }
}

#Preview {
    AttributesView()
        .environmentObject(Character.characterExample)
}
