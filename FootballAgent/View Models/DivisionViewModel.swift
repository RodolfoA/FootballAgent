//
//  DivisionViewModel.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 17/04/24.
//

import Foundation
import Observation

@Observable
class DivisionViewModel {
    var divisions : [Division] = GameState.shared.divisions
    
    func getDivisionsNumber() -> Int {
        return divisions.count
    }
    
    func getClubName(club: Club) -> String {
        return club.name
    }
    
}
