//
//  CardView.swift
//  Hike
//
//  Created by Kyaw Thant Zin(George) on 12/27/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            //creating a circle
            Circle()
                .fill(LinearGradient(colors: [Color(indigoM),Color(salmonL)], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 256,height: 256)
            Image("image-1")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    CardView()
}
