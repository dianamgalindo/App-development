//
//  eventPage.swift
//  SU_app
//
//  Created by Diana Galindo on 20/05/2023.
//

import SwiftUI
import MapKit
import SwiftUIMargin

struct eventPage: View {
    var eventPageDetails: Upcoming //data from upcomingEventsDetails
    
    @State private var mapRegion = MKCoordinateRegion( //storing the map's state
        center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
            ScrollView{
                VStack {
                    //Content space
                    ZStack (alignment: .bottomTrailing){
                        //Image header
                        Image(eventPageDetails.eventImage)
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 400, height:280)
                            .edgesIgnoringSafeArea(.all)
                            //.offset(x:0, y:0)
                        Rectangle()
                            .fill(.white)
                            .frame(width: 400, height:50)
                            .cornerRadius(15)
                            //.offset(x:0, y:130)
                       //Support image
                        Image("eventsSupport_img")//decoration image
                            .renderingMode(.original)
                            .resizable()
                            .frame(width:118, height:215)
                            .offset(x:0, y:165)
                        //Save btn (no functionality added)
                        Circle()
                            .fill(.white)
                            .frame(width: 70, height: 70)
                            .offset(x:-40, y:-10)
                            .shadow(
                                color: .gray.opacity(0.4),
                                radius: 4,
                                x:0,
                                y:0)
                        //Save icon
                        Image(systemName:"bookmark.fill")
                            .offset(x:-60, y:-25)
                            .font(.system(size: 30))
                            .foregroundStyle(colourSystem.corePink)
                            .accessibilityLabel("Save this event for later")
                        
                    }
                    //.offset(x:0, y:-150)
                    
                    VStack (alignment: .leading){
                        
                        //Initial details
                        Text(eventPageDetails.eventName)
                            .font(.custom("Rubik-ExtraBold", size: 25))
                            .foregroundColor(colourSystem.secondaryPurple)
                            .margin(bottom:20)
                        
                        //Event time details
                        HStack {
                            Image(systemName:"calendar")
                                .font(.system(size: 20))
                                .foregroundStyle(colourSystem.secondaryPurple)
                                .accessibilityLabel("Event date")
                                .margin(bottom:4, right: 15)
                            VStack (alignment: .leading){
                                Text(eventPageDetails.eventDate)
                                    .font(.custom("Roboto-Bold", size: 16))
                                    .margin(bottom:4)
                                Text(eventPageDetails.eventDateDetail)
                                    .font(.custom("Roboto-Regular", size: 14))
                                   
                            }
                            
                        }
                        .margin(bottom:20)
                        
                        //Event location details
                        HStack {
                            Image(systemName:"map")
                                .font(.system(size: 20))
                                .foregroundStyle(colourSystem.secondaryPurple)
                                .accessibilityLabel("Event location")
                                .margin(bottom:4, right: 15)
                            VStack (alignment: .leading){
                                Text(eventPageDetails.eventLocation)
                                    .font(.custom("Roboto-Bold", size: 16))
                                    .margin(bottom:4)
                                Text(eventPageDetails.eventLocationDetail)
                                    .font(.custom("Roboto-Regular", size: 14))
                            }
                        }
                        .margin(bottom:20)
                        
                        //Event ticket price details
                        HStack {
                            Image(systemName:"banknote")
                                .font(.system(size: 20))
                                .foregroundStyle(colourSystem.secondaryPurple)
                                .accessibilityLabel("Ticket price")
                                .margin(bottom:4, right: 15)
                            VStack (alignment: .leading){
                                Text(eventPageDetails.eventPrice)
                                    .font(.custom("Roboto-Bold", size: 16))
                                    .margin(bottom:4)
                                Text(eventPageDetails.eventPriceDetail)
                                    .font(.custom("Roboto-Regular", size: 14))
                            }
                        }
                        .margin(bottom:40)
                        
                        
                        //Event About details
                        Text("About")
                            .font(.custom("Rubik-ExtraBold", size: 25))
                            .foregroundColor(colourSystem.secondaryPurple)
                            .margin(bottom:25)
                        Text(eventPageDetails.eventDescription)
                            .font(.custom("Roboto-Regular", size: 16))
                            .frame(width: 350)
                            .margin(bottom:40)
                            .lineSpacing(6)
                        
                        //Event Location
                        Text("Location")
                            .font(.custom("Rubik-ExtraBold", size: 25))
                            .foregroundColor(colourSystem.secondaryPurple)
                            .margin(bottom:5)
                        Text(eventPageDetails.eventlocationName)
                            .margin(bottom:25)
                        Map(coordinateRegion: $mapRegion)
                            .frame(width: 350, height: 400)
                            .margin(bottom:50)
                        
                        //Navigation button
                        NavigationLink {
                        quantityTickets()
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(colourSystem.corePink)
                                    .frame(width:350, height:60)
                                Text("Buy tickets")
                                    .foregroundColor(Color.white)
                                    .bold()
                                    //.padding(.all, 10.0)
                            }
                        }
                    }
                    
                } //close main VStack
                //.offset(x:0, y:-60)
                
            }// close Scrollview
            //.frame(height: .infinity)
            //.edgesIgnoringSafeArea(.top)
        
    }
}

struct eventPage_Previews: PreviewProvider {
    static var previews: some View {
        eventPage(eventPageDetails: upcomingData[1])//data coming from upcomingEventsData
    }
}
