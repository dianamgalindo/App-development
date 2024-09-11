//
//  myBasket.swift
//  SU_app
//
//  Created by Diana Galindo Clavijo on 27/04/2023.
//

import SwiftUI
import SwiftUIMargin

struct yourTickets: View {
    var ticket: Ticket
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
                Text("Your tickets")
                    .margin(bottom: 20)
                    .margin(top: 40)
                    .foregroundStyle(colourSystem.secondaryPurple)
                    .font(.custom("Rubik-ExtraBold", size: 26))
                ForEach(ticketDetails) {event in
                    NavigationLink{
                            //Navigation to dedicated event page
                            singleTicket(ticketData: event) //coming from followedCommunities
                        } label: {
                            ticket_item(ticketPageDetails: event)
                        }
                    }
                Spacer()
            }
        }
        
        .padding(.horizontal)
        .navigationBarBackButtonHidden()
    }
    
}

struct yourTickets_Previews: PreviewProvider {
    static var previews: some View {
        yourTickets(ticket: ticketDetails[0])
    }
}
