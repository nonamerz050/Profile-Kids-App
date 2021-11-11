//
//  KidTextFields.swift
//  Profile Kids App
//
//  Created by MacBook Pro on 10/11/21.
//

import SwiftUI
import Combine

struct KidTextFields: View {
    @State var data = DataKidModel()
    
    var body: some View {
        VStack {
            VStack (alignment: .leading, spacing: 5) {
                Text("Имя")
                    .modifier(TitleTextField())
                TextField(
                    "Введите имя", text: $data.name
                )
                    .modifier(BasicTextField())
                    .onReceive(Just(data.name)) { newValue in
                        let filtered = newValue.filter { Constants.alphabet.contains($0) }
                        if filtered != newValue {
                            self.data.name = filtered
                        }
                    }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 2)
                    .stroke(Color("LightGray"), lineWidth: 1)
            )
            .padding(.horizontal, MagicNumber.x2)
            
            VStack (alignment: .leading, spacing: 5) {
                Text("Возраст")
                    .modifier(TitleTextField())
                TextField(
                    "Введите возраст", text: $data.age
                )
                    .modifier(BasicTextField())
                    .keyboardType(.numberPad)
                    .onReceive(Just(data.age)) { newValue in
                        let filtered = newValue.filter { Constants.digits.contains($0) }
                        if filtered != newValue {
                            self.data.age = filtered
                        }
                    }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 2)
                    .stroke(Color("LightGray"), lineWidth: 1)
            )
            .padding(.horizontal, MagicNumber.x2)
        }
    }
}
