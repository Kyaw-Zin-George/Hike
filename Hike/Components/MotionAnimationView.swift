//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Kyaw Thant Zin(George) on 12/27/24.
//

import SwiftUI

struct MotionAnimationView: View {
    //MARK: Properties
    @State private var randomCircle : Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    
    //MARK: Function
    //1. RANDOM COORDINATE
    func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    //2.RANDOM SIZE
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 4...80))
    }
    //3.RANDOM SCALE
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    //4. RANDOM SPEED
    func randomSpeed() -> Double {
        return Double.random(in: 0.05...1.0)
    }
    //5. RANDOM DELAY
    func randomDelay() -> Double {
        return Double.random(in: 0...2.0)
    }
    
    var body: some View {
        ZStack{
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundStyle(.white)
                    .opacity(0.25)
                //implement the random size
                    .frame(width: randomSize())
                //implement the random coordinate here
                    .position(x: randomCoordinate(), y: randomCoordinate())
                //implement random scale
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear(perform: {
                        withAnimation(.interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                                      //implement speed
                            .speed(randomSpeed())
                                      // implement delay
                            .delay(randomDelay())
                                      )
                        {
                            isAnimating = true
                        }
                    }
                    )
            }
        }
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
    ZStack {
        //to be able to see the white circle
        MotionAnimationView()
            .background(Circle().fill(.teal))
    }
}
