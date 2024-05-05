//
//  FriendsPageView.swift
//  FriendlyBets
//
//  Created by Dylan Lu on 5/5/24.
//

import SwiftUI

let sampleFriends = [
    FriendItem(name: "James Form", profileImage: ""),
    FriendItem(name: "Ethan Fu", profileImage: ""),
    FriendItem(name: "Hayden Chong", profileImage: "")
]

struct FriendsPageView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                
                List {
                    ForEach(searchResults, id: \.self) { friend in
                        NavigationLink(friend.name, value: friend)
                    }
                }
                .searchable(text: $searchText)
                
                
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Friends")
                        .font(.largeTitle)
                        .bold()
                }
                ToolbarItem {
                    Image(systemName: "plus")
                }
            }
            .navigationDestination(for: FriendItem.self) { value in
                Text(value.name)
            }
        }
    }
    
    var searchResults: [FriendItem] {
        if searchText.isEmpty {
            return sampleFriends
        }
        else {
            return sampleFriends.filter { $0.name.contains(searchText)
            }
        }
    }
}

#Preview {
    FriendsPageView()
        .preferredColorScheme(.dark)
}
