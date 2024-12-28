//
//  CustomListRowView.swift
//  Hike
//
//  Created by Kyaw Thant Zin(George) on 12/28/24.
//
import Foundation
import SwiftUI

struct CustomListRowView: View {
    
    //MARK: Properties
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDesination: String? = nil
    
    
    var body: some View {
        LabeledContent{
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundStyle(.primary)
                    .fontWeight(.heavy)
            }else if(rowLinkLabel != nil && rowLinkDesination != nil) {
                Link(rowLinkLabel!,destination: URL(string: rowLinkDesination!)!)
                    .foregroundStyle(.pink)
                    .fontWeight(.heavy)
            
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        }label: {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
        
    }
}

#Preview {
    List() {
        CustomListRowView(
            rowLabel: "Website",
            rowIcon: "paintpalette",
            rowContent: nil,
            rowTintColor: .pink,
            rowLinkLabel: "Apple",
            rowLinkDesination: "https://www.apple.com")
    }
    
}
