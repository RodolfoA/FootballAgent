//
//  DivisionListView.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 17/04/24.
//

import SwiftUI

struct DivisionRow: View {
    
    var tier : Int
    
    var body: some View {
        (Text(Image(systemName: "\(tier).circle.fill")) + Text (" Division"))
            .font(.title)
    }
}

#Preview {
    DivisionRow(tier: 1)
}
