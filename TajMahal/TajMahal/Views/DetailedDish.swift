//
//  DetailedDish.swift
//  TajMahal
//
//  Created by Hugues Bousselet on 11/10/2024.
//

import SwiftUI

struct DetailedDish: View {
    let imageName: String
    let name: String
    let description: String
    let price: Double
    let spicy: Int
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 335, height: 110, alignment: .leading)
            .opacity(0)
            .overlay(
                HStack {
                    Image(imageName)
                        .resizable()
                        .cornerRadius(15)
                        .frame(width: 112, height: 86)
                        .padding(.leading, 10)
                        .padding(.vertical, 10)
                    Spacer()
                    VStack(alignment: .leading) {
                        Text(name)
                            .font(Font.custom("PlusJakartaSans-Regular", size: 14))
                            .padding(.top, 10)
                        Spacer()
                        Text(description)
                            .font(Font.custom("PlusJakartaSans-Regular", size: 12))
                            .lineSpacing(1)
                            .padding(.top, 10)
                        Spacer()
                        HStack {
                            Text("\(price.description)€")
                                .font(Font.custom("PlusJakartaSans-Regular", size: 12))
                            Spacer()
                            //remplacer par vue Chili
                            Text("chilli")
                                .padding(.trailing, 20)
                        }

                        Spacer()
                    }
                    .fontWeight(.heavy)
                    .foregroundStyle((Color(.sRGB, red: 102/255, green: 102/255, blue: 102/255, opacity: 1)))
                }
                )
    }
}

//#Preview {
//    DetailedDish(model: ViewModel())
//}
