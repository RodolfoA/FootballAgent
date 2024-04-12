//
//  PlayerViewModel.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 12/04/24.
//

import Foundation

@Observable
class PlayerViewModel {
    
    var players : [Player] = []
    
    func getPlayerName(player : Player) -> String {
        return player.name
    }
    
    func getPlayerAge(player : Player) -> Int {
        let calendar = Calendar.current
        let ageComponents = calendar.dateComponents([.year], from: player.bornDate, to: Date())
        return ageComponents.year ?? 0
    }
    
    func getPlayerReputation(player : Player) -> Int {
        return player.reputation
    }
    
    func getPlayerPosition(player : Player) -> Position {
        return player.position
    }
    
    func getPlayerImageName(player : Player) -> String {
        return player.imageName
    }
    
    init() {
        //Test cases
        players.append(Player())
        players.append(Player())
        players.append(Player())
        players[0].name = "Test 1"
        players[1].name = "Test 2"
        players[2].name = "Test 3"
        players[0].reputation = 1
        players[1].reputation = 50
        players[2].reputation = 75
        players[0].position = .Defender
        players[1].position = .Goalkeeper
        players[2].position = .Midfilder
        players[0].imageName = "playerImage1"
        players[1].imageName = "playerImage2"
        players[2].imageName = "playerImage3"
    }
}
