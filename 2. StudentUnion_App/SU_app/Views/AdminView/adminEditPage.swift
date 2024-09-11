//
//  adminEditPage.swift
//  SU_app
//
//  Created by Diana Galindo on 02/06/2023.
//

import SwiftUI

struct adminEditPage: View {
    var communityEditData: Communities //data from communitiesPageData
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading){
                
                //Header and Message btn
                VStack (alignment: .leading) {
                    HStack (alignment: .top) {
                        Text(communityEditData.communityName)
                            .font(.custom("Rubik-ExtraBold", size: 25))
                            .foregroundColor(colourSystem.secondaryPurple)
                            .margin(bottom:40)
                        Spacer()
                    }
                    ZStack{
                        //Community Logo and tags
                        VStack{
                            HStack (alignment: .top) {
                                //Community Logo
                                Image(communityEditData.logo)
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
                                        Text(communityEditData.keyword)
                                            .font(.custom("Rubik-SemiBold", size: 15))
                                            .frame(width: 90, height: 30)
                                            .background(.white)
                                            .clipShape(Capsule())
                                        
                                        Text(communityEditData.keywordTwo)
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
                                        Text(communityEditData.keywordThree)
                                            .font(.custom("Rubik-SemiBold", size: 15))
                                            .frame(width: 110, height: 30)
                                            .background(.white)
                                            .clipShape(Capsule())
                                        
                                        Text(communityEditData.keywordFour)
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
                        .border(.blue)
                        .cornerRadius(10)
                        
                        ZStack{
                            Circle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(colourSystem.corePink)
                                .shadow(
                                    color: .gray.opacity(0.4),
                                    radius: 4,
                                    x:0,
                                    y:0)
                            Image(systemName:"square.and.pencil")
                                .font(.system(size: 15))
                                .foregroundStyle(.white)
                                .accessibilityLabel("Save this event for later")
                        }
                        .offset(x:170, y:-50)
                      
                   
                    }
                    .margin(bottom:25)
                    
                    //Community introduction
                    VStack{
                        ZStack{
                            VStack{
                                Text(communityEditData.description)
                                    .font(.custom("Roboto-Regular", size: 16))
                                    .lineSpacing(6)
                            }
                            .border(.blue)
                            .cornerRadius(10)
                                  
                            ZStack{
                                Circle()
                                    .frame(width: 30, height: 30)
                                    .foregroundStyle(colourSystem.corePink)
                                    .shadow(
                                        color: .gray.opacity(0.4),
                                        radius: 4,
                                        x:0,
                                        y:0)
                                Image(systemName:"square.and.pencil")
                                    .font(.system(size: 15))
                                    .foregroundStyle(.white)
                                    .accessibilityLabel("Save this event for later")
                            }
                            .offset(x:170, y:-90)
                        }
                    }
                    .margin(bottom:25)
                
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
                                    .foregroundColor(colourSystem.corePink)
                                    .offset(x:30, y:-40)
                                    .shadow(
                                        color: .gray.opacity(0.4),
                                        radius: 4,
                                        x:0,
                                        y:0)
                                Image(systemName:"square.and.pencil")
                                    .offset(x:30, y:-40)
                                    .font(.system(size: 15))
                                    .foregroundStyle(.white)
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
                                    .foregroundColor(colourSystem.corePink)
                                    .offset(x:30, y:-40)
                                    .shadow(
                                        color: .gray.opacity(0.4),
                                        radius: 4,
                                        x:0,
                                        y:0)
                                Image(systemName:"square.and.pencil")
                                    .offset(x:30, y:-40)
                                    .font(.system(size: 15))
                                    .foregroundStyle(.white)
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
                                    .foregroundColor(colourSystem.corePink)
                                    .offset(x:30, y:-40)
                                    .shadow(
                                        color: .gray.opacity(0.4),
                                        radius: 4,
                                        x:0,
                                        y:0)
                                Image(systemName:"square.and.pencil")
                                    .offset(x:30, y:-40)
                                    .font(.system(size: 15))
                                    .foregroundStyle(.white)
                                    .accessibilityLabel("Save this event for later")
                            }
                            
                            
                        }//close HStack for Quick Updates
                        .frame(width: 300, height: 120, alignment: .leading)
                        .margin(bottom:40)
                        
                    }
                  
                
                    //Upcoming events section
                    ZStack (alignment: .topTrailing){
                        community_event_Row(eventsCommunityPages:upcomingSocietyData[0])
                        
                        ZStack {
                            Circle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(colourSystem.corePink)
                                .shadow(
                                    color: .gray.opacity(0.4),
                                    radius: 4,
                                    x:0,
                                    y:0)
                            Image(systemName:"square.and.pencil")
                                .font(.system(size: 15))
                                .foregroundStyle(.white)
                                .accessibilityLabel("Save this event for later")
                            
                        }
                        .offset(x:-90, y:0)
                       
                    }
                    
                    
                    
                    
                    VStack (alignment: .leading){
                        //Quick updates section
                        HStack(alignment: .center){
                            Text("Meet your committee")
                                .font(.custom("Rubik-ExtraBold", size: 25))
                                .foregroundColor(colourSystem.secondaryPurple)
                                .margin(bottom:15)
                            ZStack {
                                Circle()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(colourSystem.corePink)
                                    .shadow(
                                        color: .gray.opacity(0.4),
                                        radius: 4,
                                        x:0,
                                        y:0)
                                Image(systemName:"square.and.pencil")
                                    .font(.system(size: 15))
                                    .foregroundStyle(.white)
                                    .accessibilityLabel("Save this event for later")
                                
                            }
                            .offset(x:5, y:-8)
                        }
                       
                        
                        ScrollView(.horizontal, showsIndicators: true) {
                            HStack{
                                VStack(alignment: .leading){
                                    //Community Logo
                                    Image(communityEditData.memberImage)
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width:110, height: 110)
                                        .cornerRadius(10)
                                        .shadow(
                                            color: .gray.opacity(0.4),
                                            radius: 4,
                                            x:0,
                                            y:0)
                                    Text(communityEditData.memberName)
                                        .font(.custom("Roboto-Regular", size: 16))
                                  
                                    Text(communityEditData.memberRole)
                                        .font(.custom("Roboto-Regular", size: 14))
                                }
                                VStack(alignment: .leading){
                                    Image(communityEditData.memberImageTwo)
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width:110, height: 110)
                                        .cornerRadius(10)
                                        .shadow(
                                            color: .gray.opacity(0.4),
                                            radius: 4,
                                            x:0,
                                            y:0)
                                    Text(communityEditData.memberNameTwo)
                                        .font(.custom("Roboto-Regular", size: 16))
                                    Text(communityEditData.memberRoleTwo)
                                        .font(.custom("Roboto-Regular", size: 14))
                                }
                                VStack(alignment: .leading){
                                    Image(communityEditData.memberImageThree)
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width:110, height: 110)
                                        .cornerRadius(10)
                                        .shadow(
                                            color: .gray.opacity(0.4),
                                            radius: 4,
                                            x:0,
                                            y:0)
                                    Text(communityEditData.memberNameThree)
                                        .font(.custom("Roboto-Regular", size: 16))
                                    Text(communityEditData.memberRoleThree)
                                        .font(.custom("Roboto-Regular", size: 14))
                                }
                                VStack(alignment: .leading){
                                    Image(communityEditData.memberImageFour)
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width:110, height: 110)
                                        .cornerRadius(10)
                                        .shadow(
                                            color: .gray.opacity(0.4),
                                            radius: 4,
                                            x:0,
                                            y:0)
                                    Text(communityEditData.memberNameFour)
                                        .font(.custom("Roboto-Regular", size: 16))
                                    Text(communityEditData.memberRoleFour)
                                        .font(.custom("Roboto-Regular", size: 14))
                                }
                                
                                
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

struct adminEditPage_Previews: PreviewProvider {
    static var previews: some View {
        adminEditPage(communityEditData: communitiesSocietiesData[0])
    }
}
