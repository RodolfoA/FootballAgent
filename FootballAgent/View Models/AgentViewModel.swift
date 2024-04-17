//
//  AgentViewModel.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 17/04/24.
//

import Foundation
import Observation

@Observable
class AgentViewModel {
    var agent : Agent = GameState.shared.agent
    
    func getAgentName() -> String {
        return agent.name
    }
}
