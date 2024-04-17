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
    var agent: Agent = Agent()
    var divisions: [Division] = []

    private init() {
        loadGameState()
        if agent.loaded == false {
            createGameState()
            saveGameState()
        }
    }
    
    func createGameState() {
        for divTier in 1..<8 {
            let div = Division(tier: divTier)
            for _ in 0..<20 {
                div.clubs.append(Club(name: TeamNames.createName()))
            }
            divisions.append(div)
        }
        agent.loaded = true
        agent.name = "Test Agent"
    }
    
    func loadGameState() {
        
    }
    
    func saveGameState() {
        
    }
}
