//
//  DeleteKidButton.swift
//  Profile Kids App
//
//  Created by MacBook Pro on 11/11/21.
//

import SwiftUI

struct DeleteKidButton: View {
    @ObservedObject var viewModel: MainViewModel
    var id: UUID
    var body: some View {
        Button {
            viewModel.deleteKid(id: id)
        } label: {
            Text("Удалить")
        }
        .padding(.vertical)
        .padding(.trailing, MagicNumber.x3)
    }
}
