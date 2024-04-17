//
//  Division.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 17/04/24.
//

import Foundation

class Division {
    let tier: Int
    var clubs: [Club] = []
    
    init(tier: Int) {
        self.tier = tier
    }
}

