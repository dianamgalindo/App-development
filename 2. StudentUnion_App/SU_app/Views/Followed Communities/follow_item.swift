//
//  follow_item.swift
//  SU_app
//
//  Created by Diana Galindo on 29/05/2023.
//

import SwiftUI

struct follow_item: View {
    var followedCommunity: Following //data from communities Data
    var body: some View {
        VStack{
            VStack(){
                HStack (alignment: .top){
                    Image(followedCommunity.logo)
                        .renderingMode(.original)
                        .resizable()
                        .frame(width:110, height: 110)
                        .cornerRadius(10)
                        .margin(right: 20)
                    VStack(alignment: .leading){
                        Text(followedCommunity.communityName)
                            .font(.custom("Roboto-Bold", size: 20))
                            .margin(bottom: 10)
                        
                        Text(followedCommunity.memberSince)
                            .font(.custom("Roboto-Regular", size: 16))
                            .margin(bottom: 20)
                        
                        Text("View")
                            .foregroundColor(.white)
                            .frame(width:100, height: 35)
                            .background(colourSystem.corePink)
                            .cornerRadius(10)
                    }
                }
                .frame(width: 350, height: 150)
                .background(.white)
                .cornerRadius(10)
                .shadow(
                    color: .gray.opacity(0.4),
                    radius: 4,
                    x:0,
                    y:0)
                
            }
            .margin(bottom: 20)
            
        }// close main VStack
    }
}

struct follow_item_Previews: PreviewProvider {
    static var previews: some View {
        follow_item(followedCommunity: followedCommunities[0])
    }
}
