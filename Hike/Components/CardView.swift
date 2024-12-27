//
//  CardView.swift
//  Hike
//
//  Created by Kyaw Thant Zin(George) on 12/27/24.
//

import SwiftUI

struct CardView: View {
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
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                // MARK: - FOOTER
            }
        }// CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
        .padding()
}
