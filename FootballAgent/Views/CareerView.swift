//
//  CareerView.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 11/04/24.
//

import SwiftUI

struct CareerView: View {
    
    @State private var viewModel : AgentViewModel = AgentViewModel()
    
    var body: some View {
        Text(viewModel.getAgentName())
    }
}

#Preview {
    CareerView()
}
