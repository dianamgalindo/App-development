//
//  messagesList.swift
//  SU_app
//
//  Created by Diana Galindo Clavijo on 01/06/2023.
//

import SwiftUI
import SwiftUIMargin

struct messagesList: View {
    
    var textData: Communities
    var body: some View {
        VStack (alignment:.leading){
            VStack{
                HStack{
                    Image(textData.contactImg)
                        .resizable()
                        .scaledToFill()
                        .frame(width:70, height:70)
                        .clipShape(Circle())
                        .margin(right:25)
                    VStack (alignment:.leading){
                        Text(textData.contactName)
                            .font(.custom("Roboto-Bold", size: 16))
                            .lineSpacing(6)
                            .margin(bottom:5)
                        Text(textData.contactMsg)
                            .font(.custom("Roboto-Regular", size: 16))
        
                    }
                    Spacer()
                }
            }
            .margin(bottom:20)
        }
        .padding(.horizontal)
    }
}

struct messagesList_Previews: PreviewProvider {
    static var previews: some View {
        messagesList(textData: communitiesSocietiesData[0])
    }
}
