//
//  HomePageView.swift
//  FriendlyBets
//
//  Created by Dylan Lu on 5/5/24.
//

import SwiftUI

let sampleData = [
    ProfitItem(itemName: "Chipotle Bowl", quantity: "x1"),
    ProfitItem(itemName: "Money", quantity: "$100")
]

struct HomePageView: View {
    var body: some View {
        VStack {
            HStack() {
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .padding(.trailing, 16)
                
                
                VStack(alignment: .leading) {
                    Text("Dylan Lu")
                        .font(.title)
                        .bold()
                    Text("7 Friends")
                }
                Spacer()
            }
            .padding(.leading, 16)
            
            List {
                Section(header:
                            HStack {
                    Text("Net Profits")
                    Spacer()
                }) {
                    ForEach(sampleData, id: \.self) { profit in
                        HStack {
                            Text(profit.itemName)
                                .padding()
                                .foregroundColor(.white)
                            Spacer()
                            Text(profit.quantity)
                                .padding()
                                .foregroundColor(.white)
                        }
                        .cornerRadius(10)
                    }
                }
            }
        }
        .padding(8)
    }
}

#Preview {
    HomePageView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
