//
//  RestaurantInformationLineViewAssembler.swift
//  TajMahal
//
//  Created by Hugues Bousselet on 10/10/2024.
//

import SwiftUI

struct RestaurantInformationLineViewAssembler: View {
    let imageName: String
    let leftText: String
    let rightText: String
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Image(imageName).frame(width: 12, height: 12)
            Text(leftText)
            Spacer()
            Text(rightText)
        }
        .foregroundStyle(((Color(.sRGB, red: 102/255, green: 102/255, blue: 102/255, opacity: 1))))
        .font(.jakarta(size: 12))
        .fontWeight(.bold)
        .multilineTextAlignment(.trailing)
    }
}

#Preview {
    RestaurantInformationLineViewAssembler(imageName: "website", leftText: "monday", rightText: "blbla")
}

