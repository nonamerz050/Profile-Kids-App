//
//  MainViewModel.swift
//  Profile Kids App
//
//  Created by MacBook Pro on 10/11/21.
//

import SwiftUI
import Combine

class MainViewModel: ObservableObject {
    
    @Published var dataUser: DataUserModel
    @Published var dataKid: DataKidModel
    @Published var kids: [DataKidModel]
    @Published var count: Int
    @Published var showAddKidButton: Bool
    @Published var kidAdded: Bool
    @Published var showingOptions: Bool
    
    init () {
        dataUser = DataUserModel()
        dataKid = DataKidModel()
        kids = []
        count = 0
        kidAdded = false
        showAddKidButton = true
        showingOptions = false
    }
    
    func addKid() {
        let newKid = DataKidModel()
        kids.append(newKid)
        count += 1
        if count == 5 {
            showAddKidButton = false
        } else {
            kidAdded = true
        }
    }
    
    func deleteKid(id: UUID) {
        for (i, value) in kids.enumerated() {
            if id == value.id {
                kids.remove(at: i)
                count -= 1
                showAddKidButton = true
                break
            }
        }
    }
    
    func clearAllData() {
        showAddKidButton = true
        kidAdded = false
        kids.removeAll()
        count = 0
        dataUser.name = ""
        dataUser.age = ""
    }
}
