//
//  confirmation.swift
//  SU_app
//
//  Created by Diana Galindo on 02/06/2023.
//

import SwiftUI
import SwiftUIMargin

struct confirmation: View {
    var body: some View {
        
        ZStack {
            Image("home_support_img_V2")
                .resizable()
            //                        .edgesIgnoringSafeArea(.all)
                .frame(width: 380, height: 180)
                .offset(x:0, y:-350)
                .opacity(0.6)
            
            VStack{
                Image("Confirmation")
                    .resizable()
                    .scaledToFill()
                    .frame(width:200, height:200)
                    .margin(bottom:20)
                Text("Congratulations!")
                    .font(.custom("Rubik-ExtraBold", size: 25))
                    .foregroundColor(colourSystem.secondaryPurple)
                    .margin(bottom:20)
                Text("You are going to -event name")
                    .font(.custom("Roboto-Regular", size: 16))
                    .foregroundColor(colourSystem.secondaryPurple)
                    .margin(bottom:20)
                Text("Your ticket has been successfully booked and you can find them under you tickets section. We have also sent you a confirmation email.")
                    .font(.custom("Roboto-Regular", size: 16))
                    .lineSpacing(4)
                    .frame(width: 320)
                    .margin(bottom:30)
                
                //Navigation button
                NavigationLink {
                    ContentView()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(colourSystem.corePink)
                            .frame( height:60)
                        Text("Close")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                }
                .navigationBarBackButtonHidden()
                
            }
            .padding(.horizontal)
        }
       
      
    }
}

struct confirmation_Previews: PreviewProvider {
    static var previews: some View {
        confirmation()
    }
}
