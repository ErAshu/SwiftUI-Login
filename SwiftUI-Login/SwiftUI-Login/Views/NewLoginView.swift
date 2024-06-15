//
//  NewLoginView.swift
//  SwiftUI-Login
//
//  Created by Sachin Chauhan on 16/06/24.
//

import SwiftUI

struct NewLoginView: View {
    /// View Properties
    @State private var showSignup: Bool = false
    var body: some View {
        NavigationStack {
            LoginKitView(showSignup: $showSignup)
                .navigationDestination(isPresented: $showSignup) {
                    SignupView(showSignup: $showSignup)
                }
        }
        .overlay {
            if #available(iOS 17, *) {
                circleView()
                    .animation(.smooth(duration: 0.45, extraBounce: 0), value: showSignup)
            }else {
                circleView()
                    .animation(.easeInOut, value: showSignup)
            }
           
              
        }
    }
    
    /// Moving Blured background
    @ViewBuilder
    func circleView() -> some View {
        Circle()
            .fill(.linearGradient(colors: [.yellow, .orange, .red], startPoint: .topLeading, endPoint: .bottomTrailing))
            .frame(width: 200, height: 200)
            .offset(x: showSignup ? 90 : -90, y: -90)
            .hSpacing(showSignup ?  .trailing : .leading)
            .vSpacing(.top)
            .blur(radius: 10)
    }
}

#Preview {
    NewLoginView()
}
