//
//  checkout.swift
//  SU_app
//
//  Created by Diana Galindo on 02/06/2023.
//

import SwiftUI
import SwiftUIMargin

struct checkout: View {
    
    @State private var Firstname: String = ""
    @State private var Lastname: String = ""
    @State private var email: String = ""
  
    @State private var FirtsNameTicket: String = ""
    @State private var LastNameTicket: String = ""
    @State private var emailTicket: String = ""
    
    @State private var isSelected: Bool = false
    @State private var isSelectedTwo: Bool = false
    
    
    var body: some View {
        ScrollView{
            VStack(alignment:.leading){
                Text("Checkout")
                    .font(.custom("Rubik-ExtraBold", size: 25))
                    .foregroundColor(colourSystem.secondaryPurple)
                    .margin(bottom:20)
                Text("Event Name")
                    .font(.custom("Roboto-Regular", size: 20))
                    .foregroundColor(colourSystem.secondaryPurple)
                    .margin(bottom:10)
                Text("Friday, May 11 - 9am - 5pm BST")
                    .font(.custom("Roboto-Regular", size: 16))
                    .margin(bottom:40)
           
                Form{
                    
                    Section(header:Text("Billing Information")
                        .font(.custom("Rubik-ExtraBold", size: 22))
                        .foregroundColor(colourSystem.secondaryPurple)
                        .textCase(.none)
                        .shadow(
                            color: .white.opacity(0.8),radius: 4,
                            x:0,
                            y:0)
                    ){
                        TextField("First name*", text: $Firstname)
                            .textFieldStyle(.roundedBorder)
                            .margin(top:10)
                            .listRowSeparator(.hidden)
                        TextField("Last name*", text: $Lastname)
                            .textFieldStyle(.roundedBorder)
                            .listRowSeparator(.hidden)
                        TextField("Email address*", text: $email)
                            .textFieldStyle(.roundedBorder)
                            .margin(bottom:10)
                        
                        
                    }
                    
                    Section(header:Text("Ticket information")
                        .font(.custom("Rubik-ExtraBold", size: 22))
                        .foregroundColor(colourSystem.secondaryPurple)
                        .textCase(.none)
                        .shadow(
                            color: .white.opacity(0.8),radius: 4,
                            x:0,
                            y:0)){
                        TextField("First name*", text: $FirtsNameTicket)
                            .textFieldStyle(.roundedBorder)
                            .margin(top:10)
                            .listRowSeparator(.hidden)
                        TextField("Last name*", text: $LastNameTicket)
                            .textFieldStyle(.roundedBorder)
                            .listRowSeparator(.hidden)
                        TextField("Email address*", text: $emailTicket)
                            .textFieldStyle(.roundedBorder)
                            .margin(bottom:10)
                            .listRowSeparator(.hidden)
                    }
                }
               
                .shadow(
                    color: .gray.opacity(0.4),radius: 4,
                    x:0,
                    y:0)
                .scrollContentBackground(.hidden) //hide default form background
                .frame(height:510)
                
                VStack (alignment: .leading){
                    Text("Payment method")
                        .font(.custom("Rubik-ExtraBold", size: 22))
                        .foregroundColor(colourSystem.secondaryPurple)
                        .margin(bottom:20)
                        //.margin(left:20)
                        .frame(width: 240)
                    
                    VStack (alignment: .leading){
                        HStack{
                            Toggle(isOn: $isSelected){
                                Label(isSelected ? "" : "",
                                      systemImage:"dot.square")
                                .symbolVariant(isSelected ? .fill : .none)
                            }
                            .toggleStyle(.button)
                            Text("Credit or debit card")
                            Spacer()
                            
                            Image(systemName:"creditcard")
                                .font(.system(size: 20))
                                .accessibilityLabel("Save this event for later")
                        }
                        HStack{
                            Toggle(isOn: $isSelectedTwo){
                                Label(isSelectedTwo ? "" : "",
                                      systemImage:"dot.square")
                                .symbolVariant(isSelectedTwo ? .fill : .none)
                            }
                            .toggleStyle(.button)
                            Text("Paypal")
                            Spacer()
                            Image("Paypal")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width:20, height: 20)
                                .accessibilityLabel("Save this event for later")
                          
                        }
                        
                    }
                    .padding()
                    .frame(width: 320)
                    .background(.white)
                    .cornerRadius(15)
                    .shadow(
                        color: .gray.opacity(0.4),radius: 4,
                        x:0,
                        y:0)
                }
                .offset(x:20)
                .margin(bottom:40)
  
                //Navigation button
                NavigationLink {
                confirmation()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(colourSystem.corePink)
                            .frame( height:60)
                        Text("Place order")
                            .foregroundColor(Color.white)
                            .bold()
                            //.padding(.all, 10.0)
                    }
                }
            }
            .padding(.horizontal)
            
        }
            
            
        }
       
}

struct checkout_Previews: PreviewProvider {
    static var previews: some View {
        checkout()
    }
}
