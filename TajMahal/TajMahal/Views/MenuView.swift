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
    @ObservedObject var viewModel: RestaurantInformations
    let sections = ["Entrées", "Plats principaux"]
    
    var body: some View {
        VStack {
            List {
                createSection(name: sections[0], dish: viewModel.apetizerArray)
                    .scaledToFit()
                createSection(name: sections[1], dish: viewModel.mainCourseArray)
                    .scaledToFit()
            }
            .listRowSpacing(12)
        }
        .navigationTitle("Menu")
    }
    
    private func createSection(name: String, dish: [Dish]) -> some View {
        Section(header: Text(name)
            .font(.headline)
            .font(Font.custom("PlusJakartaSans-Regular", size: 14))) {
                ForEach(0..<dish.count, id:\.self) { index in
                NavigationLink {
                    DishDetails(model: dish[index])
                } label: {
                    DetailedDish(imageName: dish[index].imageName,
                                 name: dish[index].name,
                                 description: dish[index].description,
                                 price: 5.6,
                                 spicy: dish[index].spiceLevel)
                }
            }
        }

    }
}


//#Preview {
//    MenuView()
//}
