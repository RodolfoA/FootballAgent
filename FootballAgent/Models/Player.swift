//
//  Player.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 11/04/24.
//

import Foundation

class Player : HasSkills, Identifiable {
    var name : String = ""
    var nationality : String = ""
    var reputation : Int = 0
    var money : Double = 0.0
    var bornDate : Date = Date()
    var imageName : String = "person"
    var position : Position = .Striker
    
    override init() {
        super.init()
        skills = [/*Personal*/
            Skill(type: .Ambition, value: 1),
            Skill(type: .Dirtiness, value: 1),
            Skill(type: .InjuryProneness, value: 1),
            Skill(type: .Loyalty, value: 1),
            Skill(type: .Professionalism, value: 1),
            Skill(type: .Determination, value: 1),
            /*Technical*/
            Skill(type: .SetPieces, value: 1),
            Skill(type: .Crossing, value: 1),
            Skill(type: .Passing, value: 1),
            Skill(type: .Finishing, value: 1),
            Skill(type: .Heading, value: 1),
            Skill(type: .Dribbling, value: 1),
            Skill(type: .Tackling, value: 1),
            Skill(type: .Marking, value: 1),
            Skill(type: .FirstTouch, value: 1),
            /*Mental*/
            Skill(type: .Agression, value: 1),
            Skill(type: .Composure, value: 1),
            Skill(type: .Concentration, value: 1),
            Skill(type: .Decisions, value: 1),
            Skill(type: .Flair, value: 1),
            Skill(type: .OffTheBall, value: 1),
            Skill(type: .Positioning, value: 1),
            Skill(type: .Teamwork, value: 1),
            Skill(type: .Vision, value: 1),
            Skill(type: .WorkRate, value: 1),
            /*Physical*/
            Skill(type: .Acceleration, value: 1),
            Skill(type: .Agility, value: 1),
            Skill(type: .JumpingReach, value: 1),
            Skill(type: .Pace, value: 1),
            Skill(type: .Stamina, value: 1),
            Skill(type: .Strenght, value: 1)]
    }
}
