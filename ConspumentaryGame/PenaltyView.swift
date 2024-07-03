//
//  PenaltyView.swift
//  ConspumentaryGame
//
//  Created by Iuliia Shmitko on 03/07/2024.
//

import SwiftUI

struct PenaltyView: View {
    var initialValue: Int
    var penalty: Int
    
    var body: some View {
        HStack {
            Text(initialValue, format: .number)
                .font(.title2)
            VStack {
                Image(systemName: "plus")
                Image(systemName: "minus")
            }.foregroundColor(.gray)
            Text(penalty, format: .number)
                .font(.title2)
        }
        .padding()
        .overlay(RoundedRectangle(cornerRadius: 30.0).stroke(.indigo, lineWidth: 2))
    }
}

#Preview {
    PenaltyView(initialValue: Attribute.attributeExample.initialValue, penalty: Attribute.attributeExample.penalty)
}
