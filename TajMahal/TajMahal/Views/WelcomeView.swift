//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

// Page d'accueil
struct WelcomeView: View {
    @ObservedObject var viewModel = RestaurantInformations()
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("TajMahal")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 20)
                    .padding(.vertical, 20)
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text("Restaurant Indien")
                            .font(Font.custom("PlusJakartaSans-Regular", size: 12))
                            .fontWeight(.heavy)
                            .foregroundStyle((Color(.sRGB, red: 102/255, green: 102/255, blue: 102/255, opacity: 1)))
                        Text(viewModel.restaurantName)
                            .font(Font.custom("PlusJakartaSans-Regular", size: 18))
                            .fontWeight(.black)
                            .font(.largeTitle)
                            .foregroundStyle((Color(.sRGB, red: 51/255, green: 51/255, blue: 51/255, opacity: 1)))
                    }
                    .foregroundStyle((Color(.sRGB, red: 154/255, green: 154/255, blue: 154/255, opacity: 1)))
                    Spacer()
                    Image("Logo")
                        .resizable()
                        .colorMultiply(Color(.sRGB, red: 154/255, green: 154/255, blue: 154/255, opacity: 1))
                        .frame(width: 39.99, height: 40)
                }
                .padding(.horizontal, 20)
                VStack(alignment: .leading) {
                    LineView(imageName: "clock", leftText: "Mardi", rightText: "11h30 - 14h30・ 18h30 - 22h00")
                    LineView(imageName: "frying.pan", leftText: "Type de Service", rightText: "À emporter")
                    LineView(imageName: "location", leftText: "12  Avenue de la Brique - 75010 Paris", rightText: "")
                    LineView(imageName: "figure", leftText: "www.tajmahal.fr", rightText: "")
                    LineView(imageName: "phone", leftText: "06 12 34 56 78", rightText: "")
                }
                .padding(.top, 22)
                .padding(.horizontal, 18)
                .lineSpacing(15.12)
                Spacer()
                NavigationLink  {
//                    DishDetails(model: viewModel)
                    MenuView(viewModel: viewModel)
                } label : {
                    Text("Accéder au menu")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(.sRGB, red: 207/255, green: 47/255, blue: 47/255, opacity: 1))
                        )
                        .font(Font.custom("PlusJakartaSans-Regular", size: 16))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                }
                .frame(width: 335, height: 40)
                .transition(.opacity)
            }
        }
    }
}

//#Preview {
//    WelcomeView()
//}

