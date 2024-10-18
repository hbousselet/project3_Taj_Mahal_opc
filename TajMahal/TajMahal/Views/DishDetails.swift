//
//  DishDetails.swift
//  TajMahal
//
//  Created by Hugues Bousselet on 12/10/2024.
//

import SwiftUI

struct DishDetails: View {
    let model: Dish
    let spiceWidth: CGFloat = 74
    let spiceHeight: CGFloat = 22
    
    var body: some View {
        VStack {
            Image(model.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
                .overlay(
                    GeometryReader { geometry in
                        SpiceVisual(spicy: model.spiceLevel)
                            .position(x: geometry.size.width - spiceWidth/2 - .inset,
                                      y: spiceHeight/2 + .inset)
                    }
                )
            VStack(alignment: .leading) {
                Text("Alergènes")
                    .fontWeight(.heavy)
                Text(model.allergens)
                    .fontWeight(.semibold)
                    .padding(.top, 10)
                Divider()
                    .padding(.top, 10)
                Text("Ingrédients")
                    .fontWeight(.heavy)
                    .padding(.top, 10)
                Text(model.ingredients)
                    .fontWeight(.semibold)
                    .padding(.top, 10)
            }
            .padding(.top, 12)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .padding(.horizontal, .inset)
        .font(.jakarta(size: 12))
        .foregroundStyle(Color.bodyInformation)
        .applyNavigationLogic(title: model.name)
    }
}

extension CGFloat {
    static let inset: CGFloat = 20
}

#Preview {
    DishDetails(model: Dish(name: "Chicken Tikka Masala", description: "Poulet mariné, grillé et servi dans une sauce masala", allergens: "Lait, yaourt, beurre clarifié (ghee), crème fraîche, crème de coco, ail, oignon", ingredients: "Huile, beurre clarifié (ghee), oignon, ail, gingembre, poudre de curcuma, poudre de cumin, poudre de coriandre, piment en poudre, tomates en purée, crème fraîche, crème de coco, sel, coriandre fraîche", spiceLevel: .medium, imageName: "Tikka Masala"))
}
