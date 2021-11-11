//
//  Styles.swift
//  Profile Kids App
//
//  Created by MacBook Pro on 11/11/21.
//

import SwiftUI

struct TitleTextField: ViewModifier {
    var color: Color = .gray
    var weight: Font.Weight = .regular
    var size: CGFloat = 17
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: weight))
            .foregroundColor(color)
            .padding(.horizontal, MagicNumber.x2)
            .padding(.top, MagicNumber.x)
    }
}

struct BasicTextField: ViewModifier {    
    func body(content: Content) -> some View {
        content
            .padding(.horizontal, MagicNumber.x2)
            .padding(.vertical, MagicNumber.x)
    }
}
