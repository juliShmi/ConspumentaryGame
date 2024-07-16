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
        VStack {
            Text("Checking ...").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding(.top)
            Spacer()
            HStack {
                ForEach(DiceModel().getDicesArray(quantity: num), id:\.self) { dice in
                    SingleDiceView(diceSystemImage: dice)
                }.padding()
            }
            Spacer()
        }
    }
}

#Preview {
    RollDiceView(num: 3)
}
