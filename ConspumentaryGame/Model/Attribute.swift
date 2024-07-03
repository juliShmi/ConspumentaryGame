//
//  Attribute.swift
//  ConspumentaryGame
//
//  Created by Iuliia Shmitko on 01/07/2024.
//

import Foundation


struct Attribute: Hashable {
    var name: String
    var initialValue: Int
    var penalty: Int
    let description: String
    
    
    static let attributeExample = Attribute(name: "BadAss", initialValue: 10, penalty: 0, description: "Badass skill")
}
