//
//  Main.swift
//  GameComrade MVP
//
//  Created by Abylaykhan Myrzakhanov on 21.10.2023.
//

import SwiftUI

struct Main: View {
    @State private var search: String = ""
    
    var body: some View {
        ScrollView (.vertical) {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (spacing: 30) {
                        VStack {
                            Image("cs2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 70)
                                .clipShape(.circle)
                            Text("CS 2")
                                .foregroundStyle(.indigo)
                        }
                        .padding()
                        VStack {
                            Image("dota2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 70)
                                .clipShape(.circle)
                            Text("Dota 2")
                                .foregroundStyle(.indigo)
                        }
                        .padding()
                        VStack {
                            Image("lol")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 70, height: 70)
                                .clipShape(.circle)
                            Text("LOL")
                                .foregroundStyle(.indigo)
                        }
                        .padding()
                    }
                }
                .background(.gray.opacity(0.2))
                .clipShape(.rect(cornerRadius: 20))
                .padding(.horizontal)
                HStack {
                    TextField("\(Image(systemName: "magnifyingglass")) Search", text: $search)
                        .padding()
                    Image(systemName: "gear")
                        .padding()
                }
                .background(.gray.opacity(0.2))
                .clipShape(.rect(cornerRadius: 20))
                .padding(.horizontal)
                ForEach (0..<6) { _ in
                    VStack {
                        HStack {
                            Image("accountImage")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, height: 100)
                                .clipShape(.circle)
                                .padding()
                            Spacer()
                            VStack (alignment: .leading, spacing: 5) {
                                HStack {
                                    Text("Futur1st")
                                        .bold()
                                    Text("\(Image(systemName: "star.fill")) 4.7")
                                        .foregroundStyle(.yellow)
                                }
                                Text("Last K/D:         1.23")
                                Text("Last K/R:         0.7")
                                Text("Friendly:         4.9")
                                Spacer()
                            }
                        }
                        HStack {
                            Button {
                                
                            } label: {
                                Text("Add friend")
                                    .foregroundStyle(.white)
                                    .padding()
                            }
                            .background(.green)
                            .clipShape(.rect(cornerRadius: 20))
                            Spacer()
                            Button {
                                
                            } label: {
                                Text("Create party")
                                    .foregroundStyle(.white)
                                    .padding()
                            }
                            .background(.blue)
                            .clipShape(.rect(cornerRadius: 20))
                        }
                        .padding(.horizontal)
                    }
                    .padding()
                    .background(.blue.opacity(0.2))
                    .clipShape(.rect(cornerRadius: 10))
                    .padding()
                }
            }
        }
    }
}

#Preview {
    Main()
}
