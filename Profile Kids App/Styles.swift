//
//  Styles.swift
//  Profile Kids App
//
//  Created by MacBook Pro on 11/11/21.
//

import SwiftUI

struct TextLabel: ViewModifier {
    var color: Color = .black
    var weight: Font.Weight = .regular
    var size: CGFloat = 17
    var paddingTop = MagicNumber.x2
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: weight))
            .foregroundColor(color)
            .padding(.horizontal, MagicNumber.x2)
            .padding(.top, paddingTop)
    }
}
