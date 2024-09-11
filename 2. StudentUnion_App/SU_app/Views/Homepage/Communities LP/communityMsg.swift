//
//  communityMessages.swift
//  SU_app
//
//  Created by Diana Galindo on 23/05/2023.
//

import SwiftUI
import SwiftUIMargin

struct communityMsg: View {
    var body: some View {
        VStack (alignment:.leading){
            Text("Messages")
            .font(.custom("Rubik-ExtraBold", size: 25))
            .foregroundColor(colourSystem.secondaryPurple)
            .margin(top:20,bottom:30, left:20)
            
            
            ForEach(communitiesSocietiesData) {data in
                NavigationLink{
                    //communityPage(communityData: data)
                    //indexTrack = indexCount + 1
                        //Navigation to dedicated event page
                    //eventPage(eventPageDetails: eventData[0])
                    } label: {
                        messagesList(textData: data)
                    }
                }
            Spacer()
            
        }
        //.padding(.horizontal)
       
    }
    
}

struct communityMessages_Previews: PreviewProvider {
    static var previews: some View {
        communityMsg()
    }
}
