//
//  ContentView.swift
//  SwiftUI-Login
//
//  Created by Sachin Chauhan on 01/06/24.
//

import SwiftUI

struct ContentView: View {
    @State var userName: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            Text("Welcome Back")
                .font(.largeTitle)
                .fontWeight(.bold)
            VStack {
                InputFieldView(text: $userName, title: "User Name")
                InputFieldView(text: $password, title: "Password")
            }
            Button {
                print("Button clicked")
            } label: {
                Text("Sign In")
                    .fontWeight(.heavy)
                    .font(.title3)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.purple]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
            }
            
            HStack {
                Spacer()
                Button(action:{}){
                    Text("Forget Password")
                        .fontWeight(.thin)
                        .underline()
                }
            }.padding(.top, 16)
            
            

        }
        .padding()
    }
}



#Preview {
    ContentView()
}
