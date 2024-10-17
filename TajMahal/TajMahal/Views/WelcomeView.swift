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
            ScrollView {
                VStack {
                    Image("TajMahal")
                        .resizable()
                        .scaledToFill()
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Restaurant Indien")
                                .font(.jakarta(size: .body))
                            //                            .fontWeight(.heavy)
                                .foregroundStyle(Color.bodyInformation)
                            Text(viewModel.restaurantName)
                                .font(.jakarta(size: .title))
                                .foregroundStyle(Color.title)
                        }
                        .foregroundStyle(Color.buttonBackground)
                        Spacer()
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .colorMultiply(Color.logo)
                        //est-ce que je garde ce cadre pour l'image ?
                            .frame(width: 40, height: 40)
                    }
                    .padding(.top, 32)
                    VStack {
                        RestaurantInformationLineViewAssembler(imageName: "customeClock", leftText: "Mardi", rightText: "11h30 - 14h30・ 18h30 - 22h00")
                            .padding(.top)
                        RestaurantInformationLineViewAssembler(imageName: "fried_pan", leftText: "Type de Service", rightText: "À emporter")
                            .padding(.top)
                        RestaurantInformationLineViewAssembler(imageName: "location", leftText: "12  Avenue de la Brique - 75010 Paris", rightText: "")
                            .padding(.top)
                        RestaurantInformationLineViewAssembler(imageName: "website", leftText: "www.tajmahal.fr", rightText: "")
                            .padding(.top)
                        RestaurantInformationLineViewAssembler(imageName: "phoneFig", leftText: "06 12 34 56 78", rightText: "")
                            .padding(.top)
                    }
                    .padding(.top, 32)
                    Spacer()
                    NavigationLink  {
                        MenuView(viewModel: viewModel)
                    } label : {
                        Text("Accéder au menu")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.buttonBackground)
                                    .frame(height: 40)
                            )
                            .font(.jakarta(size: .buttonToEndUPInMenu))
                            .foregroundStyle(.white)
                    }
                    .padding(.top, 32)
                    .transition(.opacity)
                }
                .padding(.horizontal, 20)
            }
        }
    }
}
// crer un fichier par extension
extension CGFloat {
    static let title: CGFloat = 18
    static let body: CGFloat = 12
    static let buttonToEndUPInMenu: CGFloat = 16
}

#Preview {
    WelcomeView()
}

