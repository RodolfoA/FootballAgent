//
//  PlayersView.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 11/04/24.
//

import SwiftUI

struct PlayersView: View {
    
    @State private var viewModel : PlayerViewModel = PlayerViewModel()
    
    var body: some View {
        VStack (spacing: 10) {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.fixed(180))]) {
                    ForEach (viewModel.players) { player in
                        PlayerResume(name: viewModel.getPlayerName(player: player), age: viewModel.getPlayerAge(player: player), position: viewModel.getPlayerPosition(player: player), reputation: viewModel.getPlayerReputation(player: player), imageName: viewModel.getPlayerImageName(player: player))
                                .frame(width: 200, height: 300)
                                .background(.itemBackground)
                                .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                .frame(maxHeight: 300)
                Spacer()
            }
        }
    }
}

#Preview {
    PlayersView()
}
