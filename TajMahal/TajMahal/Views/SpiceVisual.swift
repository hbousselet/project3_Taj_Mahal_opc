//
//  SpiceVisual.swift
//  TajMahal
//
//  Created by Hugues Bousselet on 11/10/2024.
//

import SwiftUI

struct SpiceVisual: View {
    let spicy: SpiceLevel
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 12)
            .frame(width: 74, height: 22)
            .opacity(0.2)
            .overlay(
                HStack {
                    ForEach(0..<3) { index in
                        if index < spicy.rawValue {
                            Image("pepper")
                                .colorMultiply(Color(.sRGB, red: 207/255, green: 47/255, blue: 47/255, opacity: 1))
                        }
                        else {
                            Image("pepper")
                        }

                    }
                }
            )
    }
}

#Preview {
    SpiceVisual(spicy: SpiceLevel.medium)
}
