//
//  AttributeView.swift
//  ConspumentaryGame
//
//  Created by Iuliia Shmitko on 03/07/2024.
//

import SwiftUI

struct AttributeView: View {
    
    let attribute: Attribute
    
    var body: some View {
        HStack {
            Text(attribute.name)
                .font(.title2)
            Spacer()
            HStack {
                PenaltyView(initialValue: attribute.initialValue, penalty: attribute.penalty)
                Button {
                    print("Edit button was tapped")
                } label: {
                    Image(systemName: "dice.fill")
                        .padding(3)
                        .foregroundStyle(.black)
                        .font(.title)
                }
            }
        }
    }
}

#Preview {
    AttributeView(attribute: Attribute.attributeExample)
}
