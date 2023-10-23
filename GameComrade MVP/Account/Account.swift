//
//  Account.swift
//  GameComrade MVP
//
//  Created by Abylaykhan Myrzakhanov on 21.10.2023.
//

import SwiftUI

struct Account: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            HStack {
                Text("Аккаунт")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                
                NavigationLink {
                    
                } label: {
                    Text("Изменить")
                        .font(.title3)
                        .foregroundStyle(.blue)
                }
                
            }
            .padding()
            VStack (spacing: 10) {
                HStack {
                    Image("accountImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                        .clipShape(.circle)
                    Spacer()
                    VStack (alignment: .trailing, spacing: 5) {
                        Text("Мырзаханов Абылайхан")
                            .font(.custom("Helvetica-Bold", size: 16))
                        Text("\(Image(systemName: "mail")) futur1stbtw@gmail.com")
                            .font(.custom("Helvetica-Regular", size: 14))
                            .foregroundStyle(.gray)
                        Text("\(Image(systemName: "birthday.cake")) 19.10.2004")
                            .font(.custom("Helvetica-Regular", size: 14))
                            .foregroundStyle(.gray)
                    }
                }
                .padding()
                .background(colorScheme == .dark ? .gray.opacity(0.6) : .gray.opacity(0.2))
                .clipShape(.rect(cornerRadius: 15))
                .padding(.horizontal)
            }
            NavigationLink {
                
            } label: {
                HStack {
                    Image(systemName: "bell")
                      
                    Text("Earning tracker")
                    Spacer()
                    Image(systemName: "chevron.right")
                }
                .foregroundStyle(.primary)
            }
            .padding()
            .foregroundStyle(.primary)
            .font(.custom("Helvetica-Regular", size: 16))
            .background(colorScheme == .dark ? .gray.opacity(0.6) : .gray.opacity(0.2))
            .clipShape(.rect(cornerRadius: 15))
            .padding(.horizontal)
            .padding(.top, 10)
            VStack (spacing: 2) {
                NavigationLink {
                    
                } label: {
                    HStack {
                        Image(systemName: "bell")
                          
                        Text("Notifications and Sounds")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .foregroundStyle(.primary)
                }
                .padding()
                Divider()
                    .background(colorScheme == .dark ? .white : .gray.opacity(0.5))
                NavigationLink {
                    
                } label: {
                    HStack {
                        Image(systemName: "lock")
                        Text("Confidientiality")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .foregroundStyle(.primary)
                }
                .padding()
                Divider()
                    .background(colorScheme == .dark ? .white : .gray.opacity(0.5))
                NavigationLink {
                    
                } label: {
                    HStack {
                        Image(systemName: "moonphase.first.quarter.inverse")
                        Text("Decoration")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .foregroundStyle(.primary)
                }
                .padding()
            }
            .foregroundStyle(.primary)
            .font(.custom("Helvetica-Regular", size: 16))
            .background(colorScheme == .dark ? .gray.opacity(0.6) : .gray.opacity(0.2))
            .clipShape(.rect(cornerRadius: 15))
            .padding(.horizontal)
            .padding(.top, 10)
            VStack (spacing: 2) {
                NavigationLink {
                    
                } label: {
                    HStack {
                        Image(systemName: "dollarsign")
                        Text("Collaboration")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .foregroundStyle(.primary)
                }
                .padding()
                Divider()
                    .background(colorScheme == .dark ? .white : .gray.opacity(0.5))
                NavigationLink {
                    
                } label: {
                    HStack {
                        Image(systemName: "questionmark")
                        Text("Support")
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .foregroundStyle(.primary)
                }
                .padding()
            }
            .foregroundStyle(.primary)
            .font(.custom("Helvetica-Regular", size: 16))
            .background(colorScheme == .dark ? .gray.opacity(0.6) : .gray.opacity(0.2))
            .clipShape(.rect(cornerRadius: 15))
            .padding(.horizontal)
            .padding(.vertical, 10)
        }
    }
}

#Preview {
    Account()
}
