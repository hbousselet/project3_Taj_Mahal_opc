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

    func body(content: Content) -> some View {
        content
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(Color.logo)
                    })
                }
            }
    }
}

extension View {
    func applyNavigationLogic(title: String) -> some View {
        modifier(NavigationModifier(title: title))
    }
}
