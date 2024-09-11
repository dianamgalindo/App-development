//
//  myCommunities.swift
//  SU_app
//
//  Created by Diana Galindo Clavijo on 27/04/2023.
//

import SwiftUI
import SwiftUIMargin

struct myCommunities: View {
    
    var followed: Following
    var body: some View {
        ZStack{
            Image("home_support_img_V2")
                .resizable()
                //.edgesIgnoringSafeArea(.all)
                .frame(width: 380, height: 180)
                .offset(x:0, y:-60)
                .opacity(0.6)
                .offset(x:0, y:-260)
            VStack(alignment: .leading){
                Text("Communities you follow")
                    .margin(bottom: 20)
                    .margin(top: 40)
                    .foregroundStyle(colourSystem.secondaryPurple)
                    .font(.custom("Rubik-ExtraBold", size: 26))
                ForEach(followedCommunities) {event in
                    NavigationLink{
                            //Navigation to dedicated event page
                            follow_page(followedCommunityData: event) //coming from followedCommunities
                        } label: {
                            follow_item(followedCommunity: event)
                        }
                    }
                Spacer()
                
            }
        }
        
        .padding(.horizontal)
     
    }
}

struct myCommunities_Previews: PreviewProvider {
    static var previews: some View {
        myCommunities(followed: followedCommunities[0] )
    }
}
