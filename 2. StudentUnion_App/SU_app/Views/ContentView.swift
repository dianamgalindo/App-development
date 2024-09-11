//
//  ContentView.swift
//  SU_app
//
//  Created by Diana Galindo Clavijo on 27/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                myHome()
                    .tabItem{
                        Label("Home", systemImage:"house")
                    }
                myCommunities(followed: followedCommunities[0] )
                    .tabItem{
                        Label("Communities", systemImage:"camera.filters")
                }
                yourTickets(ticket: ticketDetails[0])
                    .tabItem{
                        Label("Tickets",systemImage:"ticket")}
                myProfile()
                    .tabItem{
                        Label("Profile", systemImage: "person")
                    }
            }
            
        }//close VStack
        .navigationBarBackButtonHidden()
       
      
    }// closing View
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
