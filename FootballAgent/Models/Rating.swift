//
//  Ratings.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 11/04/24.
//

import Foundation

enum Rating {
    case Terrible
    case VeryBad
    case Bad
    case Average
    case Good
    case VeryGood
    case Great
    case Terrific
    
    func toString() -> String {
        switch self {
        case .Terrible: return "Terrible"
        case .VeryBad: return "Very Bad"
        case .Bad: return "Bad"
        case .Average: return "Average"
        case .Good: return "God"
        case .VeryGood: return "Very Good"
        case .Great: return "Great"
        case .Terrific: return "Terrific"
        }
    }
    
    static func createFromValue(value:Int) -> Rating {
        switch value {
        case 18,19,20: return .Terrific
        case 15,16,17: return .Great
        case 13,14: return .VeryGood
        case 11,12: return .Good
        case 9,10: return .Average
        case 7,8: return .Bad
        case 4,5,6: return .VeryBad
        default: return .Terrible
        }
    }
}
