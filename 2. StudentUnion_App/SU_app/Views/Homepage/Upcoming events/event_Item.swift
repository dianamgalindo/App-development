//
//  event_Item.swift
//  SU_app
//
//  Created by Diana Galindo on 14/05/2023.
//  Individual 'Upcoming event card' layout

import SwiftUI

struct event_Item: View {
    var eventDetails: Upcoming //data from upcomingEventsData
    
    var body: some View {
        VStack(alignment: .leading){
            ZStack (alignment: .bottomLeading){
                //Background event image
                Image(eventDetails.eventImageItem)
                    .renderingMode(.original)
                    .resizable()
                    .frame(width:370, height:280)
                    .shadow(
                        color: .gray.opacity(0.7),
                        radius: 5,
                        x:0,
                        y:0)
                //Content space
                Rectangle()
                    .fill(.white)
                    .frame(width:370, height:140)
                    .cornerRadius(10)
                //Community logo
                Image(eventDetails.logo)
                    .renderingMode(.original)
                    .resizable()
                    .frame(width:80, height: 80)
                    .cornerRadius(10)
                    .offset(x:30, y: -80)
                    .shadow(
                        color: .gray.opacity(0.4),
                        radius: 4,
                        x:0,
                        y:0)
                 
//                //Save icon
//                Image(systemName:"bookmark.circle.fill")
//                    .offset(x:310, y:-220)
//                    .font(.system(size: 35))
//
//                    .foregroundColor(colourSystem.corePink)
//                    .accessibilityLabel("Save this event for later")
                Circle()
                    .fill(.white)
                    .frame(width: 50, height: 50)
                    .offset(x:300, y:-212)
                    .shadow(
                        color: .gray.opacity(0.4),
                        radius: 4,
                        x:0,
                        y:0)
                    .opacity(0.95)
                //Save icon
                Image(systemName:"bookmark.fill")
                    .offset(x:312, y:-220)
                    .font(.system(size: 25))
                    .foregroundStyle(colourSystem.corePink)
                    .accessibilityLabel("Save this event for later")
                    .shadow(
                        color: .gray.opacity(0.4),
                        radius: 4,
                        x:0,
                        y:0)
                
                //Event text
                VStack (alignment: .leading){
                    
                    //Event name
                    Text(eventDetails.eventNameItem)
                        .offset(x:140, y: -35)
                        .font(.custom("Roboto-Bold", size: 20))
                        .multilineTextAlignment(.leading)
                    
                    //Event date
                    Text(eventDetails.eventDateItem)
                        .offset(x:140, y: -30)
                        .multilineTextAlignment(.leading)
                    
                    //Event details
                    Text(eventDetails.eventDescriptionItem)
                        .offset(x:10, y: -20)
                        .font(.custom("Roboto-Regular", size: 14))
                        .frame(width:312)
                        .multilineTextAlignment(.leading)
                }
               
            }//close ZStack
            .padding(.leading, 12)
            .frame(height: 295)
        }
    }
}

struct event_Item_Previews: PreviewProvider {
    static var previews: some View {
        event_Item(eventDetails: upcomingData[0])//data coming from upcomingEventsData
    }
}
