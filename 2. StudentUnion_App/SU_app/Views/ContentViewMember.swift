//
//  ContentViewMember.swift
//  SU_app
//
//  Created by Diana Galindo Clavijo on 01/06/2023.
//

import SwiftUI

struct ContentViewMember: View {
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
                AdminDashboard(items: TasksItems[0])
                    .tabItem{
                        Label("Admin", systemImage: "square.and.pencil")
                    }
            }
            
        }//close VStack
        .navigationBarBackButtonHidden()
    }
}

struct ContentViewMember_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewMember()
    }
}
