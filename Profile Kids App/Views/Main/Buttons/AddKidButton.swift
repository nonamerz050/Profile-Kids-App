//
//  AddKidButton.swift
//  Profile Kids App
//
//  Created by MacBook Pro on 10/11/21.
//

import SwiftUI

struct AddKidButton: View {
    @ObservedObject var viewModel: MainViewModel
    
    var body: some View {
        Button {
            viewModel.addKid()
        } label: {
            HStack {
                Image(systemName: "plus")
                    .font(.system(size: 20, weight: .bold))
                Text("Добавить ребенка")
                    .font(.system(size: MagicNumber.x2))
            }
            .padding(.horizontal, MagicNumber.x)
            .padding(.vertical, MagicNumber.x)
            .frame(width: 210, height: 50, alignment: .center)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color(.systemBlue), lineWidth: 2)
            )
        }
    }
}
