//
//  Character.swift
//  ConspumentaryGame
//
//  Created by Iuliia Shmitko on 01/07/2024.
//

import Foundation

class Character: ObservableObject {
    var info: Info
    var attributes: [Attribute]
    
    init(info: Info, attributes: [Attribute]) {
        self.info = info
        self.attributes = attributes
    }
    
    static let characterExample = Character(
        info:
            Info(firstName: "Buon", lastName: "Giorno", occupation: "Bodyguard", age: 33, placeOfBirth: "Rome", tvChannel: "1Channel"),
        attributes:
            [
                Attribute(name: "BadAss", initialValue: 2, penalty: 0, description: "Badass skill"),
                Attribute(name: "SmartAss", initialValue: 3, penalty: 0, description: "Smartass skill"),
                Attribute(name: "EggHead", initialValue: 4, penalty: 0, description: "Egghead skill"),
                Attribute(name: "Conspiracy", initialValue: 1, penalty: 0, description: "Conspiracy skill")
            ]
    )
    
}


