//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Menu sous forme de liste
struct MenuView: View {
    // Référence vers le view model qui permet d'accéder aux tableaux d'entrées et de plats du menu
    let viewModel: ViewModel = ViewModel()
    let sections = ["Entrées", "Plats principaux"]
    
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text(sections[0])
                    .font(.headline)
                    .font(Font.custom("PlusJakartaSans-Regular", size: 14))) {
                    ForEach(0..<viewModel.mainCourseArray.count) { index in
                        DetailedDish(imageName: viewModel.apetizerArray[index].imageName,
                                     name: viewModel.apetizerArray[index].name,
                                     description: viewModel.apetizerArray[index].description,
                                     price: 5.6,
                                     spicy: 2)
                    }
                }
                Section(header: Text(sections[1])
                    .font(.headline)
                    .font(Font.custom("PlusJakartaSans-Regular", size: 14))) {
                        ForEach(0..<viewModel.apetizerArray.count) { index in
                            DetailedDish(imageName: viewModel.apetizerArray[index].imageName,
                                         name: viewModel.apetizerArray[index].name,
                                         description: viewModel.apetizerArray[index].description,
                                         price: 5.6,
                                         spicy: 2)
                        }
                    }
            }
        }
        .listRowSpacing(12)
        .navigationTitle("Menu")
    }
}


#Preview {
    MenuView()
}
