//
//  NavigationView.swift
//  GameComrade MVP
//
//  Created by Abylaykhan Myrzakhanov on 21.10.2023.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        TabView {
            Main()
                .tabItem {
                    Label("Main", systemImage: "gamecontroller.fill")
                }
            GameHistory()
                .tabItem {
                    Label("History", systemImage: "book.pages")
                }
            
            Account()
                .tabItem {
                    Label("Profile", systemImage: "person.fill.viewfinder")
                }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Navigation()
}
