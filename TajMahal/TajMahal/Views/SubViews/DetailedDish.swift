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
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 110)
            .opacity(0)
            .overlay(
                HStack {
                    Image(imageName)
                        .resizable()
                        .frame(width: 112, height: 86)
                        .scaledToFit()
                        .cornerRadius(12)
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
                        .padding(.trailing, 16)

                    }
                    .foregroundStyle(Color.bodyInformation)
                    .padding(.leading, 24)
                }
                    .padding(.vertical, 12)


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
