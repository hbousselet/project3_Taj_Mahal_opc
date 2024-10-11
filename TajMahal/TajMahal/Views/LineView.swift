//
//  LineView.swift
//  TajMahal
//
//  Created by Hugues Bousselet on 10/10/2024.
//

import SwiftUI

struct LineView: View {
    let imageName: String
    let leftText: String
    let rightText: String
    
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Image(systemName: imageName).frame(width: 12, height: 12)
                .padding(.leading)
            Text(leftText)
                .padding(.leading, 10)
            Spacer()
            Text(rightText)
        }
        .frame(width: 335, height: 15)
        .foregroundStyle(((Color(.sRGB, red: 102/255, green: 102/255, blue: 102/255, opacity: 1))))
        .font(Font.custom("PlusJakartaSans-Regular", size: 12))
        .fontWeight(.bold)
        .multilineTextAlignment(.trailing)
    }
}

#Preview {
    LineView(imageName: "clock", leftText: "monday", rightText: "blbla")
}


//font-family: Plus Jakarta Sans;
//font-size: 12px;
//font-weight: 600;
//line-height: 15.12px;
//letter-spacing: -0.16500000655651093px;
//text-align: right;
