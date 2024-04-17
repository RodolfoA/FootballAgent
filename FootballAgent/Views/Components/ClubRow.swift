//
//  ClubRow.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 17/04/24.
//

import SwiftUI

struct ClubRow: View {
    
    var name : String
    
    var body: some View {
        HStack {
            Text(name)
                .padding(.horizontal)
            Spacer()
        }
        
    }
}

#Preview {
    ClubRow(name: "Test Club")
}
