//
//  SettingsView.swift
//  Hike
//
//  Created by Kyaw Thant Zin(George) on 12/28/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            //MARK: - SECTION HEADER
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors: [.customGreenLight,.customGreenMedium,.customGreenDark], startPoint: .top, endPoint: .bottom))
                .padding(.top,8)
                
                
                VStack(spacing: 8) {
                    Text("Where can you find \n the perfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    
                    Text("The hike which look gorgeous in photos but is even better once you are actually there. The hike that you hope to do it again some day. \n Find the best day hikes in the app.")
                        .font(.footnote)
                        .fontWeight(.regular)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk!")
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.customGreenMedium)
                }.multilineTextAlignment(.center)
                    .padding(.bottom,16)
                    .frame(maxWidth: .infinity)
            }//: HEADER
            //MARK: - SECTION ICONS
    
            //MARK: - SECTION ABOUT
        }.listRowSeparator(.hidden)
       
    }
}

#Preview {
    SettingsView()
}
