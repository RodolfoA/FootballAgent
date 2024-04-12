//
//  ContentView.swift
//  FootballAgent
//
//  Created by Rodolfo Antoniazzi on 11/04/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    @State private var shouldCreateAgent = GameState.shared.agent == nil

    var body: some View {
        VStack {}
        .sheet(isPresented: $shouldCreateAgent) {
            
        } content: {
            CreateAgent()
        }
        
        TabView() {
            HomeView().tabItem { Text("Home")
                Image(systemName: "house") }.tag(1)
            PlayersView().tabItem { Text("Players")
                Image(systemName: "figure.soccer")}.tag(2)
            CareerView().tabItem { Text("Career")
                Image(systemName: "person")}.tag(3)
            SettingsView().tabItem { Text("Settings")
                Image(systemName: "gearshape")}.tag(4)
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
