//
//  DishDetails.swift
//  TajMahal
//
//  Created by Hugues Bousselet on 12/10/2024.
//

import SwiftUI

struct DishDetailsView: View {
    let model: Dish
    
    var body: some View {
        VStack {
            Image(model.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(.DishDetailsView.cornerRadius)
                .overlay(
                    GeometryReader { geometry in
                        SpiceVisual(spicy: model.spiceLevel)
                            .position(x: geometry.size.width - .SpiceVisual.rectangleWidth/2 - .DishDetailsView.spiceVisualInset,
                                      y: .SpiceVisual.rectangleHeight/2 + .DishDetailsView.spiceVisualInset)
                    }
                )
            VStack(alignment: .leading) {
                Text("Alergènes")
                    .fontWeight(.heavy)
                Text(model.allergens)
                    .fontWeight(.semibold)
                    .padding(.top, .DishDetailsView.topInset)
                Divider()
                    .padding(.top, .DishDetailsView.topInset)
                Text("Ingrédients")
                    .fontWeight(.heavy)
                    .padding(.top, .DishDetailsView.topInset)
                Text(model.ingredients)
                    .fontWeight(.semibold)
                    .padding(.top, .DishDetailsView.topInset)
            }
            .padding(.top, .DishDetailsView.vstackTopInset)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .padding(.horizontal, .DishDetailsView.horizontalInset)
        .font(.jakarta(size: 12))
        .foregroundStyle(Color.body)
        .applyNavigationLogic(title: model.name, isInDishDetails: true)
    }
}

extension CGFloat {
    static let inset: CGFloat = 20
}

#Preview {
    DishDetailsView(model: Dish(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: "Tikka Masala", price: 12.50))
}
