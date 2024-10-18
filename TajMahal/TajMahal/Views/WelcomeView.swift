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
                        .scaledToFit()
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Restaurant Indien")
                                .font(.jakarta(size: 12))
                                .fontWeight(.semibold)
                                .foregroundStyle(Color.bodyInformation)
                            Text(viewModel.restaurantName)
                                .font(.jakarta(size: 18))
                                .fontWeight(.black)
                                .foregroundStyle(Color.title)
                        }
                        .foregroundStyle(Color.redCustomColor)
                        Spacer()
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .colorMultiply(Color.logo)
                            .frame(width: .WelcomeView.logoDimensions, height: .WelcomeView.logoDimensions)
                    }
                    .padding(.top, .WelcomeView.topInsetBetweenElements)
                    VStack {
                        RestaurantInformationLineViewAssembler(imageName: "customeClock", leftText: "Mardi", rightText: "11h30 - 14h30・ 18h30 - 22h00")
                            .padding(.top)
                            .padding(.leading, -2)
                        RestaurantInformationLineViewAssembler(imageName: "fried_pan", leftText: "Type de Service", rightText: "À emporter")
                            .padding(.top, .WelcomeView.topInsetBetweenInformationLines)
                            .padding(.leading, -2)
                        RestaurantInformationLineViewAssembler(imageName: "location", leftText: "12  Avenue de la Brique - 75010 Paris", rightText: "")
                            .padding(.top, .WelcomeView.topInsetBetweenInformationLines)
                        RestaurantInformationLineViewAssembler(imageName: "website", leftText: "www.tajmahal.fr", rightText: "")
                            .padding(.top, .WelcomeView.topInsetBetweenInformationLines)
                        RestaurantInformationLineViewAssembler(imageName: "phoneFig", leftText: "06 12 34 56 78", rightText: "")
                            .padding(.top, .WelcomeView.topInsetBetweenInformationLines)
                    }
                    .padding(.top, .WelcomeView.topInsetBetweenElements)
                    Spacer()
                    NavigationLink  {
                        MenuView(viewModel: viewModel)
                    } label : {
                        Text("Accéder au menu")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(
                                RoundedRectangle(cornerRadius: .WelcomeView.buttonCorners)
                                    .fill(Color.redCustomColor)
                                    .frame(height: .WelcomeView.logoDimensions)
                            )
                            .font(.jakarta(size: 16))
                            .foregroundStyle(.white)
                    }
                    .padding(.top, .WelcomeView.topInsetBetweenElements)
                    .transition(.opacity)
                }
                .padding(.horizontal, .WelcomeView.horizontalInset)
            }
        }
    }
}

#Preview {
    WelcomeView()
}

