//
//  ContentView.swift
//  FriendlyBets
//
//  Created by Dylan Lu on 5/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomePageView()
                .tabItem {
                    Image(systemName: "house.fill")
                }
            
            PlaceBetView()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                }
            
            FriendsPageView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                }
            
            
        }
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ContentView()
}
