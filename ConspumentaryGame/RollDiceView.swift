//
//  RollDiceView.swift
//  ConspumentaryGame
//
//  Created by Iuliia Shmitko on 15/07/2024.
//

import SwiftUI

struct RollDiceView: View {
    var num: Int;

    
    var body: some View {
        HStack {
            ForEach(DiceModel().getDicesArray(quantity: num), id:\.self) { dice in
                Image(systemName: dice)
                    .font(.title)
            }.padding()
        }
    }
}

#Preview {
    RollDiceView(num: 3)
}
