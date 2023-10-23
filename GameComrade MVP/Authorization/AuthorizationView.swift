//
//  AuthorizationView.swift
//  GameComrade MVP
//
//  Created by Abylaykhan Myrzakhanov on 21.10.2023.
//

import SwiftUI

struct AuthorizationView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                Image(systemName: "gamecontroller.fill")
                    .font(.system(size: 100))
                    .foregroundStyle(.purple)
                    .padding()
                VStack (spacing: 20) {
                    TextField("E-mail", text: $email)
                    Divider()
                    TextField("Password", text: $password)
                }
                .padding()
                .background(.gray.opacity(0.4))
                .clipShape(.rect(cornerRadius: 20))
                .padding()
                NavigationLink {
                    Navigation()
                } label: {
                    Text("Authorize")
                        .foregroundStyle(.white)
                }
                .padding()
                .frame(width: 150, height: 40)
                .background(.blue)
                .clipShape(.rect(cornerRadius: 20))
            }
            Spacer()
            Button {
                
            } label: {
                Text("Forgot password?")
            }
        }
    }
}

#Preview {
    AuthorizationView()
}
