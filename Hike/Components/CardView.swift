//
//  CardView.swift
//  Hike
//
//  Created by Kyaw Thant Zin(George) on 12/27/24.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - Properties
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    // MARK: - function
    
    func randomImage() {
        //DEBUG FUNCTION
        print ("----THE BUTTON WAS PRESSED----")
        print("Status: Old image number = \(imageNumber)")
        // to avoid getting the same image ever again
        repeat{
            randomNumber = Int.random(in: 1...5)
            print("Action: Random Number Generated = \(randomNumber)")
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
        print("Result: New image number = \(imageNumber)")
        print("----THE END----")
        print("\n")
    }
    var body: some View {
        
        // MARK: - CARD
        
        ZStack {
            CustomBackgroundView()
            VStack {
                VStack(alignment: .leading) {
                    //MARK: - HEADER
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom))
                        
                        Spacer()
                        //header button
                        Button {
                            //ACTION: Show a sheet
                            print("The button was pressed")
                        }label: {
                            CustomButtonView()
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for frientds and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundStyle(Color.customGrayMedium)
                }// :HEADER
                // gives header some space
                .padding(.horizontal,30)
                
                //MARK: - MAIN CONTENT
                ZStack {
                    //creating a circle
                    Circle()
                        .fill(LinearGradient(colors: [Color.customIndigoMedium  ,Color.customSalmonLight], startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 256,height: 256)
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 1.2), value: imageNumber)
                }
                // MARK: - FOOTER
                
                Button{
                    // Generate a new random number
                    randomImage()
                }label: {
                    Text("Explore More")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.customGreenLight,.customGreenMedium], startPoint: .top, endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButtonStyle())
            }
        }// CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
        .padding()
}
