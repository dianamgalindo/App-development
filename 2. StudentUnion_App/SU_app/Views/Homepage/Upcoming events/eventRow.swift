//
//  eventRow.swift
//  SU_app
//
//  Created by Diana Galindo on 14/05/2023.
//

import SwiftUI
import Foundation
import SwiftUIMargin

struct eventRow: View {
    
    var eventsPages: Upcoming
//    @State private var indexCount : Int = 0
//    @State private var indexTrack: Int = 0
    

    var body: some View {
        VStack(alignment: .leading){
            Text("Upcoming events")
                .foregroundStyle(colourSystem.secondaryPurple)
                .font(.custom("Rubik-ExtraBold", size: 26))
                .padding(.leading, 15)
                //.background(.green)
            
            ScrollView(.horizontal, showsIndicators: true){
                HStack{
                    ForEach(upcomingData) {event in
                        NavigationLink{
                                //Navigation to dedicated event page
                                eventPage(eventPageDetails: event) //coming from upcomingEventsDetails
                            } label: {
                                event_Item(eventDetails: event)
                            }
                        }
                    }
                }
            Spacer()
            }
            .margin(bottom:20)
        
        }
    }


struct eventRow_Previews: PreviewProvider {
    static var previews: some View {
        eventRow(eventsPages: upcomingData[0])
    }
}
