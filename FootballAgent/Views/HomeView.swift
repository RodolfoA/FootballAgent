//
//  HomeView.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 11/04/24.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Home Sweet Home")
                Spacer()
                NavigationLink(destination: DivisionList()) {
                    (Text(Image(systemName: "trophy.fill")) + Text (" Standings"))
                        .font(.largeTitle)
                        .foregroundStyle(.background)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(.accent)
                .cornerRadius(7.0)
                .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
