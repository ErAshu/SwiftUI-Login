//
//  InputFieldView.swift
//  SwiftUI-Login
//
//  Created by Sachin Chauhan on 02/06/24.
//

import SwiftUI

struct InputFieldView: View {
    @Binding var text: String
    var title: String?
       
    var body: some View {
        ZStack {
          TextField("", text: $text)
            .padding(.horizontal, 10)
            .frame(height: 42)
            .overlay(
              RoundedRectangle(cornerSize: CGSize(width: 4, height: 4))
                  .stroke(Color.gray, lineWidth: 1)
            )
          HStack {                    // HStack for the text
            Text(title ?? "Input")
              .font(.system(size: 14))
              .fontWeight(.thin)      // making the text small
              .foregroundColor(Color.gray)    // and gray
              .multilineTextAlignment(.leading)
              .padding(4)
              .background(.white)     // adding some white background
            Spacer()                  // pushing the text to the left
          }
          .padding(.leading, 08)
          .offset(CGSize(width: 0, height: -21))  // pushign the text up to overlay the border of the input field
        }.padding(8)
    }
}

//#Preview {
//    InputFieldView(text: $value, title: "val")
//   
//}
