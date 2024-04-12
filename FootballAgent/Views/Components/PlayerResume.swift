//
//  PlayerResume.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 12/04/24.
//

import SwiftUI

struct PlayerResume: View {

    var name: String
    var age: Int
    var position: Position
    var reputation: Int
    var imageName: String
    
    var body: some View {
        VStack (spacing: 10) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal)
                .padding(.vertical)
            HStack (spacing: 10) {
                Text(name)
                Spacer()
                Text("\(String(age))")
            }
            .padding(.horizontal)
            HStack (spacing: 10) {
                Text("\(position.rawValue)")
                Spacer()
                Text("\(String(reputation))")
                Image(systemName: "star")
            }
            .padding(.horizontal)
            Spacer()
            Button (action: {}) {
                Text("Details")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
    }
}

#Preview {
    PlayerResume(name: "Test Player", age: 16, position: .Striker, reputation: 1, imageName: "playerImage1")
}
