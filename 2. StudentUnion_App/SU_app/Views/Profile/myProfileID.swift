//
//  myProfileID.swift
//  SU_app
//
//  Created by Diana Galindo on 28/05/2023.
//

import SwiftUI
import SwiftUIMargin

struct myProfileID: View {
    var body: some View {
       
            VStack{
                ZStack{
                    Image("profileID_background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                
                    VStack{
                            Image("Code_ID")
                                .resizable()
                                .scaledToFill()
                                .frame(width:100, height: 200)
                                .margin(bottom:40)
                                .margin(top:40)
                            
                            Text("Diana Milena Galindo")
                                .font(.custom("Roboto-Bold", size: 22))
                                .margin(bottom:10)
                               
                            Text("Bsc Creative Computing")
                                    .font(.custom("Roboto-Regular", size: 20))
                                    .margin(bottom:40)
                            
                            VStack (alignment: .leading){
                                Text("University of the Arts London")
                                    .font(.custom("Roboto-Bold", size: 16))
                                    .margin(bottom:10)
                                Text("Student ID: 17913097")
                                    .font(.custom("Roboto-Regular", size: 16))
                                    .margin(bottom:10)
                                Text("Expire: 13/07/2024")
                                    .font(.custom("Roboto-Regular", size: 16))
                            }
                          
                    }//close VStack
                    .frame(width: 360, height: 620)
                    .background(.white)
                    .cornerRadius(15)
                    .margin(top:100)
                    .shadow(
                        color: .gray.opacity(0.4),
                        radius: 4,
                        x:0,
                        y:0)
                    .opacity(0.90)
                    
                    Image("Student-Id")
                        .resizable()
                        .scaledToFill()
                        .frame(width:90, height: 130)
                        .offset(y: -250)
                        .shadow(
                            color: .gray.opacity(0.4),
                            radius: 4,
                            x:0,
                            y:0)
                    
                }
               

            }
            
            
        }//close ScrollView
    
}

struct myProfileID_Previews: PreviewProvider {
    static var previews: some View {
        myProfileID()
    }
}
