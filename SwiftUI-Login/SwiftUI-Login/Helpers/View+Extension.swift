//
//  View+Extension.swift
//  SwiftUI-Login
//
//  Created by Sachin Chauhan on 15/06/24.
//

import SwiftUI

extension View {
    /// View Alignments
    @ViewBuilder
    func hSpacing(_ alignment: Alignment = .center) -> some View {
        self.frame(maxWidth: .infinity, alignment: alignment)
        
    }
    
    @ViewBuilder
    func vSpacing(_ alignment: Alignment = .center) -> some View {
        self.frame(maxHeight: .infinity, alignment: alignment)
    }
    
    /// Disable with Opacity
    
    @ViewBuilder
    func disableWithOpacity(_ condition: Bool = false) -> some View {
        self
            .disabled(condition)
            .opacity(condition ? 0.5 : 1)
    }
    
}
