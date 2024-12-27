//
//  Untitled.swift
//  Hike
//
//  Created by Kyaw Thant Zin(George) on 12/27/24.
//
import Foundation
import SwiftUI

struct CustomCircleView: View {
    //animation wont start automatically
    @State private var isAnimateGradient : Bool = false
    
    
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(
                    colors: [.customIndigoMedium,
                             .customSalmonLight], startPoint: isAnimateGradient ? .topLeading: .bottomLeading, endPoint: isAnimateGradient ? .bottomTrailing : .topLeading)
                )
                .onAppear{
                    withAnimation (.linear(duration: 3.0).repeatForever(autoreverses: true)){
                        isAnimateGradient.toggle()
                    }
                }
            MotionAnimationView()
        }.frame(width: 256,height: 256)
    }
}
#Preview {
    CustomCircleView()
}

