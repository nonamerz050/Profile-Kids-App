//
//  ClearButton.swift
//  Profile Kids App
//
//  Created by MacBook Pro on 11/11/21.
//

import SwiftUI

struct ClearButton: View {
    @ObservedObject var viewModel: MainViewModel
    var body: some View {
        HStack {
            Spacer()
            Button {
                viewModel.showingOptions = true
            } label: {
                Text("Очистить")
                    .font(.system(size: MagicNumber.x2))
                    .foregroundColor(Color(.systemRed))
                    .frame(width: 210, height: 50, alignment: .center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color(.systemRed), lineWidth: 2)
                    )
            }
            .actionSheet(isPresented: $viewModel.showingOptions) {
                ActionSheet(title: Text("Очистить"),
                            message: Text("Удaлить все введенные данные?"),
                            buttons: [
                                .default(
                                    Text("Удалить"),
                                    action: {
                                        viewModel.clearAllData()
                                    }
                                ),
                                .cancel(),
                                .destructive(
                                    Text("Отмена")
                                )
                            ]
                )
            }
            Spacer()
        }
    }
}
