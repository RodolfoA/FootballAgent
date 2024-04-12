//
//  GameState.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 12/04/24.
//

import Foundation

//Game state Singleton
class GameState {
    static let shared = GameState()
    var agent: Agent?

    private init() { }
}
