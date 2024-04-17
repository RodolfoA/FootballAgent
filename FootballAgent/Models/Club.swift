//
//  Club.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 17/04/24.
//

import Foundation

class Club: Identifiable {
    let name: String
    var players: [Player] = []
    
    init(name: String) {
        self.name = name
    }
}
