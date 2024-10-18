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
        
        RoundedRectangle(cornerRadius: .SpiceVisual.cornerRadius)
            .frame(width: .SpiceVisual.rectangleWidth, height: .SpiceVisual.rectangleHeight)
            .opacity(1)
            .foregroundStyle(.white)
            .overlay(
                HStack {
                    ForEach(0..<3) { index in
                        if index < spicy.rawValue {
                            Image("pepper")
                                .colorMultiply(Color.redCustomColor)
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
