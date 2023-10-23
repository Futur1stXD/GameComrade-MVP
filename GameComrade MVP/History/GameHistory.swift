//
//  GameHistory.swift
//  GameComrade MVP
//
//  Created by Abylaykhan Myrzakhanov on 21.10.2023.
//

import SwiftUI

struct GameHistory: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("You didn't play any game.")
                }
                .frame(width: 350, height: 200)
                .background(.gray.opacity(0.7))
                .clipShape(.rect(cornerRadius: 20))
                HStack {
                    Image(systemName: "book.fill")
                    Text("See all history")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .padding()
                .background(.gray.opacity(0.6))
                .clipShape(.rect(cornerRadius: 20))
                .padding()
            }
            .navigationTitle("History")
        }
    }
}

#Preview {
    GameHistory()
}
