//
//  userProfile.swift
//  SU_app
//
//  Created by Diana Galindo on 28/05/2023.
//

import SwiftUI
import SwiftUIMargin

struct myProfile: View {
    var body: some View {
                ScrollView {
                    VStack{
                        //Content space
                        ZStack (alignment: .bottomTrailing){
                            //Image header
                            Image("profile_background-2")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 400, height:280)
                                .edgesIgnoringSafeArea(.all)
                                //.offset(x:0, y:0)
                            Rectangle()
                                .fill(.white)
                                .frame(width: 400, height:60)
                                .cornerRadius(15)
                                .offset(x:0, y:10)
                           //Support image
                            Image("eventsSupport_img")//decoration image
                                .renderingMode(.original)
                                .resizable()
                                .frame(width:118, height:215)
                                .offset(x:0, y:148)
                            //Support image
                             Image("profileSupport_img")//decoration image
                                 .renderingMode(.original)
                                 .resizable()
                                 .frame(width:100, height:215)
                                 .offset(x:-300, y:150)
                          
                            //User Profile picture
                            Image("App_id_v2")
                                .resizable()
                                .scaledToFill()
                                .frame(width:150, height:150)
                                .clipShape(Circle())
                                .offset(x:-120, y:20)
                                .shadow(
                                    color: .gray.opacity(0.4),
                                    radius: 4,
                                    x:0,
                                    y:0)
                        }
                        .margin(bottom:40)
                        VStack{
                            HStack (alignment: .center){
                                Text("Diana Milena Galindo")
                                    .font(.custom("Rubik-ExtraBold", size: 22))
                                    .foregroundStyle(colourSystem.secondaryPurple)
                                Image(systemName:"pencil.circle.fill")
                                    .font(.system(size: 22))
                                    .foregroundStyle(colourSystem.corePink)
                                    .accessibilityLabel("Edit profile")
                            }
                            .margin(bottom:10)
                            Text("Bsc Creative Computing")
                                .font(.custom("Roboto-Regular", size: 18))
                            
                        }
                        .margin(bottom:40)
                        
                        
                        
                        //Student ID
                        
                        VStack{
                            NavigationLink(destination: myProfileID())
                            {
                                HStack{
                                    Image("Student-Id")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width:50, height:50)
                                    VStack(alignment: .leading){
                                        Text("University of the Arts London")
                                            .font(.custom("Roboto-Bold", size: 16))
                                            .margin(bottom:10)
                                        Text("Student ID: 17913097")
                                            .font(.custom("Roboto-Regular", size: 16))
                                    }
                                    .margin(left:30)
                                    
                                }
                                //Styling of student ID card section
                                .frame(width: 360, height: 120)
                                .background(.white)
                                .cornerRadius(15)
                                .shadow(
                                    color: .gray.opacity(0.4),
                                    radius: 4,
                                    x:0,
                                    y:0)
                                .margin(bottom:40)
                            }
                        }
                        
//                        VStack{
//                            NavigationLink {
//                            myProfileID()
//                                    .toolbar(.hidden, for: .tabBar)
//                            } label: {
//                                
//                            }
//                        }
                        
                        //List of Navigation Links (No linking)
                        VStack(alignment: .leading){
                            
                            //First row
                            HStack {
                                Image(systemName:"person.fill")
                                    .font(.system(size: 25))
                                    .foregroundStyle(colourSystem.secondaryPurple)
                                    .accessibilityLabel("Account type")
                                    
                                VStack (alignment: .leading){
                                    Text("Account Type")
                                        .font(.custom("Roboto-Regular", size: 18))
                                        .margin(bottom:5)
                                    Text("Manage your account")
                                        .font(.custom("Roboto-Regular", size: 14))
                                }
                                .margin(left:20)
                            }
                            .margin(bottom:15)
                            Divider()
                            
                            //Second row
                            HStack {
                                Image(systemName:"bell.fill")
                                    .font(.system(size: 25))
                                    .foregroundStyle(colourSystem.secondaryPurple)
                                    .accessibilityLabel("Push notifications")
                                VStack (alignment: .leading){
                                    Text("Push Notifications")
                                        .font(.custom("Roboto-Regular", size: 18))
                                        .margin(bottom:5)
                                    Text("activate or disable")
                                        .font(.custom("Roboto-Regular", size: 14))
                                }
                                .margin(left:20)
                            }
                            .margin(top:15)
                            .margin(bottom:15)
                            Divider()
                            
                            //Third row
                            HStack {
                                Image(systemName:"lock.fill")
                                    .font(.system(size: 25))
                                    .foregroundStyle(colourSystem.secondaryPurple)
                                    .accessibilityLabel("Save this event for later")
                                VStack (alignment: .leading){
                                    Text("Privacy and Security")
                                        .font(.custom("Roboto-Regular", size: 18))
                                        .margin(bottom:5)
                                    Text("choose your settings")
                                        .font(.custom("Roboto-Regular", size: 14))
                                }
                                .margin(left:20)
                            }
                            .margin(top:15)
                            .margin(bottom:15)
                            Divider()
                            
                            
                            //Fourth row
                            HStack {
                                Image(systemName:"figure.arms.open")
                                    .font(.system(size: 25))
                                    .foregroundStyle(colourSystem.secondaryPurple)
                                    .accessibilityLabel("Save this event for later")
                                VStack (alignment: .leading){
                                    Text("Accessibility")
                                        .font(.custom("Roboto-Regular", size: 18))
                                        .margin(bottom:5)
                                    Text("choose your settings")
                                        .font(.custom("Roboto-Regular", size: 14))
                                    
                                }
                                .margin(left:20)
                                Spacer()
                            }
                            .margin(top:15)
                            .margin(bottom:15)
                            Divider()

                        }
                        .padding(.horizontal)
                        .margin(left:15)
                        .margin(bottom:30)
                        //Logout button
                        
                        VStack{
                            NavigationLink(destination: loginSelection()){
                                Text("Log out from your account")
                                    .margin(bottom:40)
                            }
                        }
                        
                        
                    }//main VStack
                   
                }
                
            }
               
}

struct userProfile_Previews: PreviewProvider {
    static var previews: some View {
        myProfile()
    }
}
