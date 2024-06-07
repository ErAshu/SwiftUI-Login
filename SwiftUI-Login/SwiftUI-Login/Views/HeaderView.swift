//
//  HeaderView.swift
//  SwiftUI-Login
//
//  Created by Sachin Chauhan on 07/06/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.pink)
                .rotationEffect(.degrees(0))
            VStack {
                Text("To Do List")
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                Text("Get Things Done")
                    .font(.system(size: 30))
                    .fontWeight(.regular)
                    .foregroundStyle(.white)
            }
            .padding(.top, 60)
        }
        .frame(width: UIScreen.main.bounds.width*2, height: 250)
       // .offset(y:-100)
       
    }
}

#Preview {
    HeaderView()
}
