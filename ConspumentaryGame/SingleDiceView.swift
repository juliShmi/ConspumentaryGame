//
//  SingleDiceView.swift
//  ConspumentaryGame
//
//  Created by Iuliia Shmitko on 16/07/2024.
//

import SwiftUI

struct SingleDiceView: View {
    
    var diceSystemImage: String
    
    var body: some View {
        if diceSystemImage == "die.face.6" {
            Image(systemName: diceSystemImage)
                .font(.system(size: 40))
                .foregroundColor(.green)
        } else {
            Image(systemName: diceSystemImage)
                .font(.system(size: 40))
                .foregroundColor(.red)
        }
    }
}

#Preview {
    SingleDiceView(diceSystemImage: "die.face.6")
}
