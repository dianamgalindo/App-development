//
//  society_Item.swift
//  SU_app
//
//  Created by Diana Galindo on 20/05/2023.
//

import SwiftUI
import SwiftUIMargin

struct society_Item: View {
    var communityEntryData: Communities //data from communities Data
    var body: some View {
        VStack(alignment: .leading){
            Image(communityEntryData.logo)
                .renderingMode(.original)
                .resizable()
                .frame(width:110, height: 110)
            HStack{
                Text(communityEntryData.communityName)
                    .font(.custom("Roboto-Regular", size: 13))
                    .frame(width:100, alignment: .bottomLeading)
                    .margin(top:5, left:4)
                    .multilineTextAlignment(.leading)   
                
            }
                
                
        }
        .margin(top:0, bottom:6, right:0)
        .background(.white)
        .cornerRadius(10)
        .shadow(
            color: .gray.opacity(0.4),
            radius: 4,
            x:0,
            y:0)
        .padding(4)
        .frame(minHeight: 180)
    }
}

struct society_Item_Previews: PreviewProvider {
    static var previews: some View {
        society_Item(communityEntryData: communitiesSocietiesData[0])
    }
}
