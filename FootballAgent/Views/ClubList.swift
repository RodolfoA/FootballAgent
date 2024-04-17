//
//  ClubList.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 17/04/24.
//

import SwiftUI

struct ClubList: View {
    @State private var viewModel : DivisionViewModel = DivisionViewModel()
    var tier: Int
    
    var body: some View {
        List(viewModel.divisions[tier-1].clubs, id: \.id) { club in
            ClubRow(name: viewModel.getClubName(club: club))
        }
    }
}

#Preview {
    ClubList(tier:1)
}
