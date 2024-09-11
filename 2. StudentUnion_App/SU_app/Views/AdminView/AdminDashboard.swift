//
//  AdminDashboard.swift
//  SU_app
//
//  Created by Diana Galindo Clavijo on 01/06/2023.
//

import SwiftUI
import SwiftUIMargin

struct AdminDashboard: View {
    
    var items: AdminItem
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack{
                    Text("Admin \ndashboard")
                        .font(.custom("Rubik-ExtraBold", size: 25))
                        .foregroundColor(colourSystem.secondaryPurple)
                        .margin(bottom:40)
                        .margin(top:40)
                    Spacer()
                    
                    //Messages button
                    NavigationLink(destination: communityMsg()){
                        Image(systemName: "paperplane.circle.fill")
                            .font(.system(size: 45))
                            .foregroundColor(colourSystem.secondaryBlue)
                    }
                }
                
                HStack{
                        Image("societyLogo_computerScience")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width:90, height: 90)
                            .cornerRadius(10)
                            //.margin(left:10)
                            .margin(right:3)
                    
                    VStack(alignment: .leading){
                        Text("Computer Science \nSociety")
                            .font(.custom("Rubik-ExtraBold", size: 18))
                            .foregroundColor(colourSystem.secondaryPurple)
                            .margin(bottom:10)
                        Text("Committee role: Social Media Officer")
                            .font(.custom("Roboto-Regular", size: 12))
                    }
                    .frame(width:210, height:100)
                    //.margin(left:5)
                    Spacer()
                }//close HStack
               
                .padding()
                .frame(width: 360, height: 120)
                .background(.white)
                .cornerRadius(15)
                .shadow(
                    color: .gray.opacity(0.4),
                    radius: 4,
                    x:0,
                    y:0)
                .margin(bottom:40)
                
                //Quick updates section
                VStack (alignment: .leading){
                    Text("Quick Updates")
                        .font(.custom("Rubik-ExtraBold", size: 25))
                        .foregroundColor(colourSystem.secondaryPurple)
                        .margin(bottom:15)
                    
                    HStack(spacing: 20) {
                        //Update 1
                        ZStack{
                            VStack{
                                Circle()
                                    .fill(.blue)
                                    .frame(width: 80, height: 80)
                                Text("Happening \nright now")
                                    .font(.custom("Roboto-Regular", size: 12))
                            }
                            Circle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                                .offset(x:30, y:-40)
                                .shadow(
                                    color: .gray.opacity(0.4),
                                    radius: 4,
                                    x:0,
                                    y:0)
                            Image(systemName:"plus")
                                .offset(x:30, y:-40)
                                .font(.system(size: 15))
                                .foregroundStyle(colourSystem.corePink)
                                .accessibilityLabel("Save this event for later")
                            
                        }
                        
                        //Update 2
                        ZStack{
                            VStack {
                                Circle()
                                    .fill(.blue)
                                    .frame(width: 80, height: 80)
                                Text(" Our \nFQA's")
                                    .font(.custom("Roboto-Regular", size: 12))
                            }
                            Circle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                                .offset(x:30, y:-40)
                                .shadow(
                                    color: .gray.opacity(0.4),
                                    radius: 4,
                                    x:0,
                                    y:0)
                            Image(systemName:"plus")
                                .offset(x:30, y:-40)
                                .font(.system(size: 15))
                                .foregroundStyle(colourSystem.corePink)
                                .accessibilityLabel("Save this event for later")
                        }
                        
                        
                        //Update 3
                        ZStack{
                            VStack{
                                Circle()
                                    .fill(.blue)
                                    .frame(width: 80, height: 80)
                                Text("How do I \njoin?")
                                    .font(.custom("Roboto-Regular", size: 12))
                            }
                            Circle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                                .offset(x:30, y:-40)
                                .shadow(
                                    color: .gray.opacity(0.4),
                                    radius: 4,
                                    x:0,
                                    y:0)
                            Image(systemName:"plus")
                                .offset(x:30, y:-40)
                                .font(.system(size: 15))
                                .foregroundStyle(colourSystem.corePink)
                                .accessibilityLabel("Save this event for later")
                        }
                        
                        
                    }//close HStack for Quick Updates
                    .frame(width: 300, height: 120, alignment: .leading)
                    .margin(bottom:40)
                    
                }
                
                // Edit Society
                NavigationLink {
                    adminEditPage(communityEditData: communitiesSocietiesData[0])
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(colourSystem.corePink)
                            .frame(height:60)
                        Text("Edit society profile")
                            .foregroundColor(Color.white)
                            .bold()
                            //.padding(.all, 10.0)
                    }
                }
                .margin(bottom:40)
                
                //Tasks Sectiom
                Text("Tasks")
                    .font(.custom("Rubik-ExtraBold", size: 25))
                    .foregroundColor(colourSystem.secondaryPurple)
                    .margin(bottom:10)
                Text("Keep on track with your community")
                    .font(.custom("Roboto-Regular", size: 16))
                    .margin(bottom:20)
                
                ScrollView(.horizontal, showsIndicators: true){
                    HStack{
                        ForEach(TasksItems) {event in
                            
                            adminItems(adminItemsData: event)
//                            NavigationLink{
//                                    //Navigation to dedicated event page
//                                    //singleTicket(ticketData: event) //coming from followedCommunities
//                                } label: {
//                                    adminItems(adminItemsData: event)
//                                }
                            }
                    }
                }
                .margin(bottom:40)
                
                //Tool Items
                Text("Tools")
                    .font(.custom("Rubik-ExtraBold", size: 25))
                    .foregroundColor(colourSystem.secondaryPurple)
                    .margin(bottom:10)
                Text("Improve your community's performance")
                    .font(.custom("Roboto-Regular", size: 16))
                    .margin(bottom:20)
                
                ScrollView(.horizontal, showsIndicators: true){
                    HStack{
                        ForEach(ToolsItems) {event in
                            
                            adminItems(adminItemsData: event)
//                            NavigationLink{
//                                    //Navigation to dedicated event page
//                                    //singleTicket(ticketData: event) //coming from followedCommunities
//                                } label: {
//                                    adminItems(adminItemsData: event)
//                                }
                            }
                    }
                }
                .margin(bottom:20)
        
            }
            .padding(.horizontal)
            
        }
    }
}

struct AdminDashboard_Previews: PreviewProvider {
    static var previews: some View {
        AdminDashboard(items: TasksItems[0])
    }
}
