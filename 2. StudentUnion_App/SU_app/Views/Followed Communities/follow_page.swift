//
//  follow_page.swift
//  SU_app
//
//  Created by Diana Galindo on 29/05/2023.
//

import SwiftUI

struct follow_page: View {
    var followedCommunityData: Following
    //Follow button variables
    @State var followBtn: String = "Unfollow"
    @State var followImg: String = "person.badge.minus"
    @State var followOffset: Int = 36
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading){
                
                //Header and Message btn
                VStack (alignment: .leading) {
                    HStack (alignment: .top) {
                        Text(followedCommunityData.communityName)
                            .font(.custom("Rubik-ExtraBold", size: 25))
                            .foregroundColor(colourSystem.secondaryPurple)
                            .margin(bottom:40)
                        Spacer()
                        
                        //Messages button
                        NavigationLink(destination: communityMsg()){
                            Image(systemName: "paperplane.circle.fill")
                                .font(.system(size: 45))
                                .foregroundColor(colourSystem.secondaryBlue)
                            
                        }
                    }
                    
                    //Community Logo and tags
                    VStack{
                        HStack (alignment: .top) {
                            //Community Logo
                            Image(followedCommunityData.logo)
                                .renderingMode(.original)
                                .resizable()
                                .frame(width:110, height: 110)
                                .cornerRadius(10)
                                .shadow(
                                    color: .gray.opacity(0.4),
                                    radius: 4,
                                    x:0,
                                    y:0)
                            
                            VStack (alignment: .leading){
                            
                                Text("Offerings")
                                    .font(.custom("Rubik-SemiBold", size: 18))
                                    .frame(width: 80, height: 30)
                                

                                HStack {
                                    //Community tags row 1
                                    Text(followedCommunityData.keyword)
                                        .font(.custom("Rubik-SemiBold", size: 15))
                                        .frame(width: 90, height: 30)
                                        .background(.white)
                                        .clipShape(Capsule())
                                    
                                    Text(followedCommunityData.keywordTwo)
                                        .font(.custom("Rubik-SemiBold", size: 15))
                                        .frame(width: 100, height: 30)
                                        .background(.white)
                                        .clipShape(Capsule())
                                }
                                
                                .shadow(
                                    color: .gray.opacity(0.5),
                                    radius: 2,
                                    x:0,
                                    y:0)
                                
                                HStack {
                                    //Community tags row 2
                                    Text(followedCommunityData.keywordThree)
                                        .font(.custom("Rubik-SemiBold", size: 15))
                                        .frame(width: 110, height: 30)
                                        .background(.white)
                                        .clipShape(Capsule())
                                    
                                    Text(followedCommunityData.keywordFour)
                                        .font(.custom("Rubik-SemiBold", size: 15))
                                        .frame(width: 110, height: 30)
                                        .background(.white)
                                        .clipShape(Capsule())
                                }
                                .shadow(
                                    color: .gray.opacity(0.5),
                                    radius: 2,
                                    x:0,
                                    y:0)
                                
                            }
                            .margin(left: 15)
                            
                        } //close main HStack
                    }
                    
                    .margin(bottom:25)
                    
                    //Community introduction
                    Text(followedCommunityData.description)
                        .font(.custom("Roboto-Regular", size: 16))
                        .lineSpacing(6)
                        .margin(bottom:25)
                    
                    
                    //Upcoming events section
                    community_event_Row(eventsCommunityPages:upcomingSocietyData[0])
                    
                    
                    //Quick updates section
                    VStack (alignment: .leading){
                        Text("Quick Updates")
                            .font(.custom("Rubik-ExtraBold", size: 25))
                            .foregroundColor(colourSystem.secondaryPurple)
                            .margin(bottom:15)
                        
                        HStack(spacing: 20) {
                            //Update 1
                            NavigationLink(destination: communityMsg()){
                                VStack{
                                    Circle()
                                        .fill(.blue)
                                        .frame(width: 80, height: 80)
                                    Text("Happening \nright now")
                                        .font(.custom("Roboto-Regular", size: 12))
                                }
                            }
                            
                            //Update 2
                            NavigationLink(destination: communityMsg()){
                                VStack {
                                    Circle()
                                        .fill(.blue)
                                        .frame(width: 80, height: 80)
                                    Text(" Our \nFQA's")
                                        .font(.custom("Roboto-Regular", size: 12))
                                }
                            }
                            
                            //Update 3
                            NavigationLink(destination: communityMsg()){
                                VStack{
                                    Circle()
                                        .fill(.blue)
                                        .frame(width: 80, height: 80)
                                    Text("How do I \njoin?")
                                        .font(.custom("Roboto-Regular", size: 12))
                                }
                            }
                            
                        }//close HStack for Quick Updates
                        .frame(width: 300, height: 120, alignment: .leading)
                        .margin(bottom:40)
                        
                    }
                    
                    VStack{
                        //Quick updates section
                        Text("Meet your committee")
                            .font(.custom("Rubik-ExtraBold", size: 25))
                            .foregroundColor(colourSystem.secondaryPurple)
                            .margin(bottom:15)
                        
                        ScrollView(.horizontal, showsIndicators: true) {
                            HStack{
                                VStack(alignment: .leading){
                                    //Community Logo
                                    Image(followedCommunityData.memberImage)
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width:110, height: 110)
                                        .cornerRadius(10)
                                        .shadow(
                                            color: .gray.opacity(0.4),
                                            radius: 4,
                                            x:0,
                                            y:0)
                                    Text(followedCommunityData.memberName)
                                        .font(.custom("Roboto-Regular", size: 16))
                                  
                                    Text(followedCommunityData.memberRole)
                                        .font(.custom("Roboto-Regular", size: 14))
                                }
                                VStack(alignment: .leading){
                                    Image(followedCommunityData.memberImageTwo)
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width:110, height: 110)
                                        .cornerRadius(10)
                                        .shadow(
                                            color: .gray.opacity(0.4),
                                            radius: 4,
                                            x:0,
                                            y:0)
                                    Text(followedCommunityData.memberNameTwo)
                                        .font(.custom("Roboto-Regular", size: 16))
                                    Text(followedCommunityData.memberRoleTwo)
                                        .font(.custom("Roboto-Regular", size: 14))
                                }
                                VStack(alignment: .leading){
                                    Image(followedCommunityData.memberImageThree)
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width:110, height: 110)
                                        .cornerRadius(10)
                                        .shadow(
                                            color: .gray.opacity(0.4),
                                            radius: 4,
                                            x:0,
                                            y:0)
                                    Text(followedCommunityData.memberNameThree)
                                        .font(.custom("Roboto-Regular", size: 16))
                                    Text(followedCommunityData.memberRoleThree)
                                        .font(.custom("Roboto-Regular", size: 14))
                                }
                                VStack(alignment: .leading){
                                    Image(followedCommunityData.memberImageFour)
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width:110, height: 110)
                                        .cornerRadius(10)
                                        .shadow(
                                            color: .gray.opacity(0.4),
                                            radius: 4,
                                            x:0,
                                            y:0)
                                    Text(followedCommunityData.memberNameFour)
                                        .font(.custom("Roboto-Regular", size: 16))
                                    Text(followedCommunityData.memberRoleFour)
                                        .font(.custom("Roboto-Regular", size: 14))
                                }
                                
                            }
                        }//close ScrollView
                        
                        .margin(bottom:40)
                        //Follow Button
                        Button{
                            followBtn = "removed"
                            followImg = "checkmark.circle"
                            followOffset = 40
                            
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(colourSystem.corePink)
                                    .frame(width:150, height:45)
                                Image(systemName: followImg)
                                    .font(.system(size: 22))
                                    .foregroundStyle(.white)
                                    .offset(x:CGFloat(followOffset), y:0)
                                Text(followBtn)
                                    .foregroundColor(Color.white)
                                    .bold()
                                    .offset(x:-20, y:0)
                            }
                        }
                       
                       
                    }
                }
                
            }
            .padding(.horizontal)
            .margin(top: 30)
        }// close ScrollView
    }
}

struct follow_page_Previews: PreviewProvider {
    static var previews: some View {
        follow_page(followedCommunityData: followedCommunities[0])
    }
}
