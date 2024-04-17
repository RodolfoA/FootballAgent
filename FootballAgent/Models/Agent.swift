//
//  Agent.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 11/04/24.
//

import Foundation

class Agent : HasSkills {
    var name : String = ""
    var nationality : String = ""
    var reputation : Int = 0
    var money : Double = 0.0
    var bornDate: Date = Date()
    var loaded: Bool = false
    
    override init() {
        super.init()
        skills = [Skill(type: .JudgingAbility, value: 1),
                  Skill(type: .JudgingPotential, value: 1),
                  Skill(type: .Negotiating, value: 1),
                  Skill(type: .Motivating, value: 1),
                  Skill(type: .TimeManagement, value: 1)]
    }
    
}
