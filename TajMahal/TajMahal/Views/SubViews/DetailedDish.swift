//
//  DishMenuAssembler.swift
//  TajMahal
//
//  Created by Hugues Bousselet on 11/10/2024.
//

import SwiftUI

struct DishMenuAssembler: View {
    let imageName: String
    let name: String
    let description: String
    let price: Double
    let spicy: SpiceLevel
    
    var body: some View {
        RoundedRectangle(cornerRadius: .MenuView.DetailedDish.cornerRadius)
            .frame(height: .MenuView.DetailedDish.rectangleHeight)
            .opacity(0)
            .overlay(
                HStack {
                    Image(imageName)
                        .resizable()
                        .frame(width: .MenuView.DetailedDish.imageWidth, height: .MenuView.DetailedDish.imageHeight)
                        .scaledToFit()
                        .cornerRadius(.MenuView.DetailedDish.cornerRadius)
                    VStack(alignment: .leading) {
                        Text(name)
                            .font(.jakarta(size: 14))
                            .fontWeight(.heavy)
                        Text(description)
                            .font(.jakarta(size: 12))
                            .fontWeight(.semibold)
                            .padding(.top)
                            .lineLimit(2...4)
                        HStack {
                            Text("\(price.description)€")
                                .font(.jakarta(size: 12))
                                .fontWeight(.heavy)
                            Spacer()
                            SpiceVisual(spicy: spicy)
                        }
                        .padding(.top)
                        .padding(.trailing, .MenuView.DetailedDish.hstackTrailling)

                    }
                    .foregroundStyle(Color.bodyInformation)
                    .padding(.leading, .MenuView.DetailedDish.insetBetweenImageAndVstack)
                }
                    .padding(.vertical, .MenuView.DetailedDish.verticalInset    )


                )
    }
}

#Preview {
    DishMenuAssembler(imageName: "Samosas",
                      name: "Samosas aux légumes",
                      description: "Délicieux chaussons frits garnis de légumes épicés",
                      price: 12,
                      spicy: .light)
}
