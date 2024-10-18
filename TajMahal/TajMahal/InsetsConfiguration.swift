//
//  InsetsConfiguration.swift
//  TajMahal
//
//  Created by Hugues Bousselet on 18/10/2024.
//

import Foundation

extension CGFloat {
    struct WelcomeView {
        static let horizontalInset: CGFloat = 20
        static let topInsetBetweenElements: CGFloat = 32
        static let topInsetBetweenInformationLines: CGFloat = 14
        static let logoDimensions: CGFloat = 40
        static let buttonCorners: CGFloat = 12

    }
    
    struct MenuView {
        static let lineSpacing: CGFloat = 12
        static let correctHeaderLeadingInset: CGFloat = -20
        
        struct DetailedDish {
            static let cornerRadius: CGFloat = 10
            static let rectangleHeight: CGFloat = 110
            static let imageHeight: CGFloat = 86
            static let imageWidth: CGFloat = 112
            static let hstackTrailling: CGFloat = 16
            static let insetBetweenImageAndVstack: CGFloat = 21
            static let verticalInset: CGFloat = 12
            
        }
    }
    
    struct SpiceVisual {
        static let cornerRadius: CGFloat = 10
        static let rectangleHeight: CGFloat = 22
        static let rectangleWidth: CGFloat = 74
        
    }
    static let title: CGFloat = 18
    static let body: CGFloat = 12
    static let buttonToEndUPInMenu: CGFloat = 16
}
