//
//  MainView.swift
//  Profile Kids App
//
//  Created by MacBook Pro on 10/11/21.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel = MainViewModel()
    var body: some View {
        ScrollView {
            VStack {
                HStack{
                    Text("Персональные данные")
                        .font(.system(size: 18, weight: .medium))
                        .padding(.horizontal, MagicNumber.x2)
                    Spacer()
                }
                UserTextFields(data: $viewModel.dataUser)
                HStack {
                    Text("Дети (макс. 5)")
                        .font(.system(size: 18, weight: .medium))
                        .padding(.vertical, MagicNumber.x2)
                    Spacer()
                    if viewModel.showAddKidButton {
                        AddKidButton(viewModel: viewModel)
                    }
                }
                .padding(.vertical, MagicNumber.x)
                .padding(.horizontal, MagicNumber.x2)
                if viewModel.kidAdded {
                    ForEach (viewModel.kids, id: \.id) { kid in
                        VStack{
                            HStack {
                                KidTextFields(data: viewModel.dataKid)
                                DeleteKidButton(viewModel: viewModel, id: kid.id)
                                Spacer()
                            }
                            if kid.id != viewModel.kids.last!.id {
                                Divider()
                                    .padding(.vertical, MagicNumber.x)
                                    .padding(.horizontal, MagicNumber.x2)
                            }
                        }
                    }
                }
                if viewModel.count >= 1 {
                    ClearButton(viewModel: viewModel)
                        .padding(.vertical)
                }
                Spacer()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
