//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

struct MenuView: View {
    @ObservedObject var viewModel: RestaurantInformations
    let sections = ["Entrées", "Plats principaux"]
    
    var body: some View {
        List {
            createSection(name: sections[0], dish: viewModel.apetizerArray)
            createSection(name: sections[1], dish: viewModel.mainCourseArray)
        }
        .listRowSpacing(.MenuView.lineSpacing)
        .applyNavigationLogic(title: "Menu", isInDishDetails: false)
        .navigationTitle("Menu")
    }
    
    private func createSection(name: String, dish: [Dish]) -> some View {
        Section(header: Text(name.capitalized)
            .padding(.leading, .MenuView.correctHeaderLeadingInset)
            .font(.jakarta(size: 14))
            .foregroundStyle(Color.body)) {
                ForEach(0..<dish.count, id:\.self) { index in
                    ZStack {
                        DishMenuAssembler(imageName: dish[index].imageName,
                                          name: dish[index].name,
                                          description: dish[index].description,
                                          price: dish[index].price.formatted(
                                            .currency(code: "EUR")
                                            .locale(Locale(identifier: "fr_FR"))
                                            ),
                                          spicy: dish[index].spiceLevel)
                        NavigationLink {
                            DishDetailsView(model: dish[index])
                        } label: {
                            EmptyView()
                                .frame(width: 0, height: 0)
                        }.opacity(0)
                    }
            }
        }
    }
}

#Preview {
    MenuView(viewModel: RestaurantInformations())
}
