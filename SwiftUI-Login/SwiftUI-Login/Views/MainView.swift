//
//  MainView.swift
//  SwiftUI-Login
//
//  Created by Sachin Chauhan on 07/06/24.
//

import SwiftUI

struct MainView: View {
    @State var userName = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            Form{
                TextField("User Name", text: $userName)
                    .frame(height: 40)
                SecureField("Password", text: $password)
                    .frame(height: 40)
                Button(action: {
                    print("Login clicked")
                }, label: {
                    Text("Login")
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .frame(height: 44)
                    
                        .foregroundStyle(.white)
                    
                        .background(.linearGradient(colors: [.pink, .purple], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .clipShape(
                                RoundedRectangle(cornerRadius: 6)
                            )
                                    
                })
            }
           
            VStack {
                Text("New around here?")
                    .padding(.top, 10)
                    .padding(.bottom, 5)
                Button(action: {
                    print("New User Click")
                }, label: {
                    Text("Create an account")
                        .underline()
                })
            }
            .padding(.init(top: 0, leading: 0, bottom: 10, trailing: 0))
            
        }
    }
}

#Preview {
    MainView()
}
