//
//  CustomTextField.swift
//  SwiftUI-Login
//
//  Created by Sachin Chauhan on 15/06/24.
//

import SwiftUI

struct CustomTextField: View {
    var sfIcon: String
    var iconTint: Color = .gray
    var hint: String
    
    var isPassword: Bool = false
    @Binding var value : String
    
   @State private var showPassword : Bool = false
    var body: some View {
        HStack(alignment: .top, spacing: 8, content: {
            Image(systemName: sfIcon)
                .foregroundColor(iconTint)
                .frame(width: 30)
            /// Slightly bringing down
                .offset(y: 2)
            
            VStack(alignment: .leading, spacing: 8, content: {
                if isPassword {
                    Group {
                        /// Reveling password when user want to show password
                        if showPassword {
                            TextField(hint, text: $value)
                        }else {
                            SecureField(hint, text: $value)
                        }
                    }                                        
                    
                }else {
                    TextField(hint, text: $value)
                }
                Divider()
            })
            
            .overlay(alignment: .trailing) {
                if isPassword {
                    Button(action: {
                        withAnimation() {
                            showPassword.toggle()
                        }
                    }, label: {
                        Image(systemName: showPassword ? "eye.slash" : "eye")
                            .foregroundStyle(.gray)
                            .padding(10)
                            .contentShape(.rect)
                    })
                }               
            }
        })
    }
}

//#Preview {
//    CustomTextField()
//}
