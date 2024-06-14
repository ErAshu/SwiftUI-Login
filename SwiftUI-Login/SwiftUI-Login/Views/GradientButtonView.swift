//
//  GradientButtonView.swift
//  SwiftUI-Login
//
//  Created by Sachin Chauhan on 15/06/24.
//

import SwiftUI

struct GradientButtonView: View {
    var title: String
    var icon: String
    var onClick: () -> ()
    var body: some View {
        Button(action: onClick) {
            HStack(spacing: 15) {
                Text(title)
                Image(systemName: icon)
            }
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .padding(.vertical, 12)
            .padding(.horizontal, 35)
            .background(.linearGradient(colors: [.yellow, .orange, .red], startPoint: .top, endPoint: .bottom), in: .capsule)
           
        }
    }
}

//#Preview {
//    GradientButtonView()
//}
