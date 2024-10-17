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
    @Environment(\.dismiss) private var dismiss
    let sections = ["Entrées", "Plats principaux"]
    
    var body: some View {
        List {
            createSection(name: sections[0], dish: viewModel.apetizerArray)
            createSection(name: sections[1], dish: viewModel.mainCourseArray)
        }
        .listRowSpacing(12)
        .navigationTitle("Menu")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        //créer un viewmodifier
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(Color.logo)
                })
            }
        }
    }
    
    private func createSection(name: String, dish: [Dish]) -> some View {
        Section(header: Text(name)
            .font(.jakarta(size: 14))
            .foregroundStyle(Color.bodyInformation)) {
                ForEach(0..<dish.count, id:\.self) { index in
                    ZStack {
                        DishMenuAssembler(imageName: dish[index].imageName,
                                          name: dish[index].name,
                                          description: dish[index].description,
                                          price: 5.6,
                                          spicy: dish[index].spiceLevel)
                        NavigationLink {
                            DishDetails(model: dish[index])
                        } label: {
                            EmptyView()
                        }.opacity(0)
                    }
            }
        }
    }
}

#Preview {
    MenuView(viewModel: RestaurantInformations())
}
