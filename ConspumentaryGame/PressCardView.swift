//
//  PressCardView.swift
//  ConspumentaryGame
//
//  Created by Iuliia Shmitko on 01/07/2024.
//

import SwiftUI

struct PressCardView: View {
    
    @EnvironmentObject var character: Character
    
    var body: some View {
        ZStack {
//            HStack{
//                Rectangle().cornerRadius(4)
//                    .frame(height: 500)
//                    .foregroundColor(.indigo)
//                Text("Press card").font(.custom("Karla", size: 50))
//                    .rotationEffect(Angle(degrees: 90), anchor: .bottomLeading)
//            }
            VStack {
                Text(character.info.occupation).font(.custom("Libre Barcode 39 Text", size: 80))
                Image("bodyguard")
                    .scaledToFill()
                    .frame(width:250, height: 300)
                    .offset(y: 65)
                    .padding(.bottom)
                    .clipShape(Rectangle())
                    .overlay(Rectangle().stroke(.yellow, lineWidth: 5))
                    .cornerRadius(5)
                
                
                VStack() {
                    HStack {
                        Text("Firstname/Lastname: ")
                        Spacer()
                        Text(character.info.firstName) +
                        Text(" "+"\(character.info.lastName)")
                    }
                    HStack {
                        Text("Age, Place of Birth: ")
                        Spacer()
                        Text(character.info.age, format: .number) +
                        Text(" y.o., "+"\(character.info.placeOfBirth)")
                    }
                    HStack {
                        Text("TV Channel: ")
                        Spacer()
                        Text(character.info.tvChannel)
                    }
                }.padding()
                    .font(.title2)
                
            }
           
        }
    }
}

#Preview {
    PressCardView()
        .environmentObject(Character.characterExample)
}
