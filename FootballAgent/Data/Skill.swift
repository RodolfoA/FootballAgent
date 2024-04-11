//
//  Skills.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 11/04/24.
//

import Foundation

enum SkillType : String {
    //Agent
    case JudgingAbility = "Judging Ability"
    case JudgingPotential = "Judging Potential"
    case Negotiating = "Negotiating"
    case Motivating = "Motivating"
    case TimeManagement = "Time Management"
    case AvaliatingMatches = "AvaliatingMatches"
    //Player Personal
    case Ambition = "Ambition"
    case Dirtiness = "Dirtiness"
    case InjuryProneness = "Injury Proneness"
    case Loyalty = "Loyalty"
    case Professionalism = "Professionalism"
    case Determination = "Determination"
    //Player Technical
    case SetPieces = "Set Pieces"
    case Crossing = "Crossing"
    case Passing = "Passing"
    case Finishing = "Finishing"
    case Heading = "Heading"
    case Dribbling = "Dribbling"
    case Tackling = "Tackling"
    case Marking = "Marking"
    case FirstTouch = "First Touch"
    //PLayer Mental
    case Agression = "Agression"
    case Composure = "Composure"
    case Concentration = "Concentration"
    case Decisions = "Decisions"
    case Flair = "Flair"
    case OffTheBall = "Off The Ball"
    case Positioning = "Positioning"
    case Teamwork = "Teamwork"
    case Vision = "Vision"
    case WorkRate = "Work Rate"
    //Player Physical
    case Acceleration = "Acceleration"
    case Agility = "Agility"
    case JumpingReach = "Jumping Reach"
    case Pace = "Pace"
    case Stamina = "Stamina"
    case Strenght = "Strenght"
    
}

class Skill {
    let type : SkillType
    private var value : Int = 1
    
    init(type: SkillType, value: Int) {
        self.type = type
        if value >= 1, value <= 20 {
            self.value = value
        } else {
            self.value = 1
        }
    }
    
    func getValue() -> Int {
        return self.value
    }
    
    func setValue(newValue: Int) {
        if newValue >= 1, newValue <= 20 {
            self.value = newValue
        }
    }
}

class HasSkills {
    var skills : [Skill] = []
    
    func getSkillName(skill : Int) -> String {
        if skill >= skills.count {
            return ""
        }
        return skills[skill].type.rawValue
    }
    
    func getSkillValue(skill : Int) -> Int {
        if skill >= skills.count {
            return 1
        }
        return skills[skill].getValue()
    }
    
    func getSkillValueAsRating(skill: Int) -> Rating {
        if skill >= skills.count {
            return Rating.Terrible
        }
        return Rating.createFromValue(value: skills[skill].getValue())
    }
    
    func getSkillValueWithName(name: String) -> Int {
        for skill in skills {
            if skill.type.rawValue == name {
                return skill.getValue()
            }
        }
        return 1
    }
    
    func getSkillValueWithType(type: SkillType) -> Int {
        for skill in skills {
            if skill.type == type {
                return skill.getValue()
            }
        }
        return 1
    }
    
    func getSkillValueWithTypeAsRating(type: SkillType) -> Rating {
        for skill in skills {
            if skill.type == type {
                return Rating.createFromValue(value:skill.getValue())
            }
        }
        return .Terrible
    }
    
    func setSkillValue(skill : Int, value: Int) {
        if skill < skills.count {
            skills[skill].setValue(newValue: value)
        }
    }
}
