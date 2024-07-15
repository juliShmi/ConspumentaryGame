//
//  AttributeView.swift
//  ConspumentaryGame
//
//  Created by Iuliia Shmitko on 03/07/2024.
//

import SwiftUI

struct AttributeView: View {
    
    let attribute: Attribute
    @State var showRollDiceView = false;
    
    var body: some View {
        NavigationStack {
            HStack {
                Text(attribute.name)
                    .font(.title2)
                Spacer()
                HStack {
                    PenaltyView(initialValue: attribute.initialValue, penalty: attribute.penalty)
                    Button {
                        showRollDiceView.toggle()
                    } label: {
                        Image(systemName: "dice.fill")
                            .padding(3)
                            .foregroundStyle(.black)
                            .font(.title)
                    }.navigationDestination(isPresented: $showRollDiceView) { RollDiceView(num: attribute.initialValue-attribute.penalty)
                    }
                    
                }
                
            }
        }
    }
}


#Preview {
    AttributeView(attribute: Attribute.attributeExample)
}
