//
//  quantityTickets.swift
//  SU_app
//
//  Created by Diana Galindo on 02/06/2023.
//

import SwiftUI
import SwiftUIMargin

struct quantityTickets: View {
    
    @State private var quantity: Int = 0
    @State private var quantityTwo: Int = 0
    @State private var ticketprice: Int = 5
    @State private var ticketspriceTwo: Int = 20
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Event Name")
                .font(.custom("Rubik-ExtraBold", size: 25))
                .foregroundColor(colourSystem.secondaryPurple)
            Text("Friday, 11 May  - 9am - 5pm")
                .font(.custom("Roboto-Regular", size: 16))
                .foregroundColor(colourSystem.secondaryPurple)
                .margin(bottom:40)
            
            
            VStack(alignment: .leading){
                Stepper(value: $quantity,
                        in: 0...5, //five tickets per person
                        step: 1){
                    Text("Standard release:   \(quantity)")
                        .font(.custom("Rubik-ExtraBold", size: 18))
                        .foregroundColor(colourSystem.secondaryPurple)
                }
                Divider()
             
                Text("This is a small description of the tickets that will be purchased by the user. It will include details about the ticket itself, rather than the event.")
                    .font(.custom("Roboto-Regular", size: 14))
                    .lineSpacing(4)
                    .margin(top:10)
                    .margin(bottom:15)
                HStack{
                    Text("£\(ticketprice)")
                    Text("final price with VAT incl.")
                        .font(.custom("Roboto-Regular", size: 14))
                }
            }
            //Styling of ticket description element
            .padding()
            .frame(width: 360, height: 180)
            .background(.white)
            .cornerRadius(10)
            .margin(bottom:40)
            .shadow(
                color: .gray.opacity(0.4),
                radius: 4,
                x:0,
                y:0)
            
            VStack(alignment: .leading){
                Stepper(value: $quantityTwo,
                        in: 0...5, //five tickets per person
                        step: 1){
                    Text("Standard release:   \(quantityTwo)")
                        .font(.custom("Rubik-ExtraBold", size: 18))
                        .foregroundColor(colourSystem.secondaryPurple)
                }
                Divider()
                Text("This is a small description of the tickets that will be purchased by the user. It will include details about the ticket itself, rather than the event.")
                    .font(.custom("Roboto-Regular", size: 14))
                    .lineSpacing(4)
                    .margin(top:10)
                    .margin(bottom:15)
                HStack{
                    Text("£\(ticketspriceTwo)")
                    Text("final price with VAT incl.")
                        .font(.custom("Roboto-Regular", size: 14))
                }
            }
            //Styling of ticket description element
            .padding()
            .frame(width: 360, height: 180)
            .background(.white)
            .cornerRadius(10)
            .margin(bottom:40)
            .shadow(
                color: .gray.opacity(0.4),
                radius: 4,
                x:0,
                y:0)
            
            Text("Total £\(quantity * ticketprice + quantityTwo * ticketspriceTwo)")
                .font(.custom("Roboto-Bold", size: 20))
            
            //Navigation button
            NavigationLink {
            checkout()
            } label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(colourSystem.corePink)
                        .frame( height:60)
                    Text("Checkout \(quantity + quantityTwo) items")
                        .foregroundColor(Color.white)
                        .bold()
                        //.padding(.all, 10.0)
                }
            }
        }//close main VStack
        .padding(.horizontal)
    }
}

struct quantityTickets_Previews: PreviewProvider {
    static var previews: some View {
        quantityTickets()
    }
}
