//
//  NavigationModifier.swift
//  TajMahal
//
//  Created by Hugues Bousselet on 18/10/2024.
//

import SwiftUI

struct NavigationModifier: ViewModifier {
    @Environment(\.dismiss) private var dismiss
    let title: String
    let isInDishDetails: Bool

    func body(content: Content) -> some View {
        content
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }, label: {
                        HStack {
                            Image(systemName: "chevron.left")
                                .foregroundStyle(Color.logo)
                            if isInDishDetails {
                                Text(title)
                                    .font(.jakarta(size: 18))
                                    .fontWeight(.black)
                                    .foregroundStyle(Color.title)
                            }
                        }
                    })
                }
            }
    }
}

extension View {
    func applyNavigationLogic(title: String, isInDishDetails: Bool) -> some View {
        modifier(NavigationModifier(title: title, isInDishDetails: isInDishDetails))
    }
}
