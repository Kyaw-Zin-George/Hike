//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Kyaw Thant Zin(George) on 12/27/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - 3. DEPTH
            // creating illusion of depth for the card background
            Color.customGreenDark
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .offset(y:12)
            
            // MARK: - 2. LIGHT
            Color.customGreenLight
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .offset(y: 3)
                .opacity(0.85)
            // MARK : -1. SURFACE
            
            LinearGradient(colors: [Color.customGreenLight, Color.customGreenMedium], startPoint: .top, endPoint: .bottom)
                .clipShape(RoundedRectangle(cornerRadius: 40))
        }
           
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
