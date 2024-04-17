//
//  DivisionList.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 17/04/24.
//

import SwiftUI

struct DivisionList: View {
    
    @State private var viewModel : DivisionViewModel = DivisionViewModel()
    
    var body: some View {
        List(viewModel.divisions, id: \.id) { division in
            NavigationLink {
                ClubList(tier: division.tier)
            } label: {
                DivisionRow(tier: division.tier)
            }
        }
    }
}

#Preview {
    DivisionList()
}
