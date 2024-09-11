//
//  ticket_item.swift
//  SU_app
//
//  Created by Diana Galindo on 31/05/2023.
//

import SwiftUI
import SwiftUIMargin

struct ticket_item: View {
    var ticketPageDetails: Ticket
    var body: some View {
        VStack{
            ZStack(){
                
                Image("ticket_Item_background")
                    .resizable()
                    //.scaledToFill()
                    
                    .shadow(
                        color: .gray.opacity(0.4),
                        radius: 4,
                        x:0,
                        y:0)
                    
                HStack (alignment: .top){
                    Image(ticketPageDetails.eventImage)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:116, height: 140)
                        .cornerRadius(10)
                        .margin(right: 30)
                    VStack(alignment: .leading){
                        Text(ticketPageDetails.eventName)
                            .font(.custom("Roboto-Bold", size: 20))
                            .margin(bottom: 10)
                        
                        Text(ticketPageDetails.eventDate)
                            .font(.custom("Roboto-Regular", size: 16))
                            .margin(bottom: 5)
                        Text(ticketPageDetails.eventTime)
                            .font(.custom("Roboto-Regular", size: 16))
                            .margin(bottom: 15)
//                        Text("See 1 ticket")
//                                .font(.custom("Roboto-Regular", size: 14))
                            
                    }
                    .margin(top:25)
                    Spacer()
                }
                
//                .frame(width: 350, height: 150)
//                .background(.white)
//                .cornerRadius(10)
//                .shadow(
//                    color: .gray.opacity(0.4),
//                    radius: 4,
//                    x:0,
//                    y:0)
                
            }
            .frame(width: 360, height: 150)
            .margin(bottom: 15)
           
            
        }// close main VStack
    }
}

struct ticket_item_Previews: PreviewProvider {
    static var previews: some View {
        ticket_item(ticketPageDetails: ticketDetails[2])
    }
}
