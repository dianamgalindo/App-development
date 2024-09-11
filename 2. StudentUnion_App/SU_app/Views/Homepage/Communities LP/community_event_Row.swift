//
//  community_event_Row.swift
//  SU_app
//
//  Created by Diana Galindo on 29/05/2023.
//

import SwiftUI
import SwiftUIMargin

struct community_event_Row: View {
    
    var eventsCommunityPages: Upcoming
    var body: some View {
        VStack(alignment: .leading){
            Text("Upcoming events")
                .foregroundStyle(colourSystem.secondaryPurple)
                .font(.custom("Rubik-ExtraBold", size: 26))
                //.padding(.leading, 15)
                //.background(.green)
            
            ScrollView(.horizontal, showsIndicators: true){
                HStack{
                    ForEach(upcomingSocietyData) {event in
                        NavigationLink{
                                //Navigation to dedicated event page
                                community_event_Page(communityPageDetails: event) //coming from upcomingEventsDetails
                            } label: {
                                community_event_Item(eventCommunityDetails: event)
                            }
                        }
                    }
                }
            Spacer()
            }
            .margin(bottom:20)
    }
}

struct community_event_Row_Previews: PreviewProvider {
    static var previews: some View {
        community_event_Row(eventsCommunityPages:upcomingSocietyData[0])
    }
}
