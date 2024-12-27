//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Kyaw Thant Zin(George) on 12/27/24.
//

import Foundation
import SwiftUI

//creating custom button style
struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                // conditional statement with nil coalescing
                //condition ? A:B
                configuration.isPressed ?
                //A when user pressed the button
                LinearGradient(colors: [.customGrayMedium,.customGrayLight], startPoint: .top, endPoint: .bottom) :
                //B when user did not press the button
                LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom)
                )
            .clipShape(RoundedRectangle(cornerRadius: 40))
            
    }
}
