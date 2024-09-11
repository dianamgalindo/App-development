//
//  singleTicket.swift
//  SU_app
//
//  Created by Diana Galindo on 31/05/2023.
//
import SwiftUI
import SwiftUIMargin

struct singleTicket: View {
    
    var ticketData: Ticket
    var body: some View {
        ZStack {
            Image("ticketBackground")
                .resizable()
                //.scaledToFill()
                .frame(width: 370)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 4,
                    x:0,
                    y:0)
                .margin(top:40)
            Image("ticketSupportImg")
                .resizable()
                .scaledToFit()
                //.frame(width: 390)
                .offset(x:0, y:-360)
                
               
            VStack{
                //Ticket code
                Image(ticketData.code)
                    .resizable()
                    .scaledToFill()
                    .frame(width:150, height: 150)
                    .margin(bottom:40)
                    .margin(top:80)
                
                Divider()
                    .frame(width:250)
                   
                    
                VStack (alignment: .leading){
                    //Ticket buyer details
                    Text(ticketData.eventName)
                        .font(.custom("Roboto-Regular", size: 18))
                        .margin(bottom:5)
                        .margin(top:40)
                    Text(ticketData.holderName)
                        .font(.custom("Roboto-Bold", size: 20))
                        .margin(bottom:30)
                    
                    
                    //Ticket info
                    Text("Ticket/seat")
                        .font(.custom("Roboto-Regular", size: 18))
                        .margin(bottom:5)
                    Text(ticketData.ticketType)
                        .margin(bottom:30)
                        .font(.custom("Roboto-Bold", size: 20))
                    
                    //Ticket Event
                    Text("Event")
                        .font(.custom("Roboto-Regular", size: 18))
                        .margin(bottom:5)
                    Text(ticketData.eventName)
                        .margin(bottom:30)
                        .font(.custom("Roboto-Bold", size: 20))
                    
                    //Ticket date and location
                    HStack (alignment: .top){
                        VStack (alignment: .leading){
                            Text("Date")
                                .margin(bottom:10)
                                .font(.custom("Roboto-Bold", size: 18))
                            Text(ticketData.eventDate)
                                .font(.custom("Roboto-Regular", size: 16))
                                .margin(bottom:5)
                            Text(ticketData.eventTime)
                                .font(.custom("Roboto-Regular", size: 16))
                        }
                        
                        .frame(width:150)
                        Spacer()

                        //.margin(right:5)
                        VStack (alignment: .leading){
                            Text("Event location")
                                .margin(bottom:10)
                                .font(.custom("Roboto-Bold", size: 18))
                            Text(ticketData.eventAddress)
                                .font(.custom("Roboto-Regular", size: 16))
                                .margin(bottom:10)
                        }
                        .font(.custom("Roboto-Regular", size: 18))
                    }
                    .frame(width:320)
                }
                
                Divider()
                    .frame(width:300)
                Text("Order number")
                    .font(.custom("Roboto-Regular", size: 16))
                    .margin(top:20)
                    .margin(bottom:5)
                Text(ticketData.orderNumber)
                    .font(.custom("Roboto-Regular", size: 18))
                    .margin(bottom:20)
                Spacer()
            }//close main VStack
           
            .padding(.horizontal)
           
        }
        .frame(width:400)
        .background(colourSystem.secondaryPink)
        
        
        
    }
}

struct singleTicket_Previews: PreviewProvider {
    static var previews: some View {
        singleTicket(ticketData:ticketDetails[2])
    }
}
