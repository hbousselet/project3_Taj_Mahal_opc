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
        .applyNavigationLogic(title: "Menu")
    }
    
    private func createSection(name: String, dish: [Dish]) -> some View {
        Section(header: Text(name.capitalized)
            .padding(.leading, -20)
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
