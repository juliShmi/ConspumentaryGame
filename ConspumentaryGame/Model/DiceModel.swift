//
//  DiceModel.swift
//  ConspumentaryGame
//
//  Created by Iuliia Shmitko on 15/07/2024.
//

import Foundation

struct DiceModel {
    
    // return array of tuples to define win combination
     
    
    
    func getDicesArray(quantity: Int) -> [String] {
        var dices: [String] = []
        for _ in 0..<quantity {
            let num = Int.random(in: 1..<7)
            let dice = getDiceSystemImage(number: num)
            dices.append(dice)
        }
        return dices;
    }
    
    
    private func getDiceSystemImage(number: Int) -> String {
        switch number {
        case 1: return "die.face.1"
        case 2: return "die.face.2"
        case 3: return "die.face.3"
        case 4: return "die.face.4"
        case 5: return "die.face.5"
        case 6: return "die.face.6"
        default: return ""
        }
    }
}
