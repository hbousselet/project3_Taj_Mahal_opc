//
//  FontConfiguration.swift
//  TajMahal
//
//  Created by Hugues Bousselet on 16/10/2024.
//

import SwiftUI

extension Font {
    static func jakarta(size: CGFloat, style: Font.TextStyle? = nil) -> Font {
        if let style = style {
            Font.custom("PlusJakartaSans-Regular", size: size, relativeTo: style)
        } else {
            Font.custom("PlusJakartaSans-Regular", size: size)
        }
    }
}
