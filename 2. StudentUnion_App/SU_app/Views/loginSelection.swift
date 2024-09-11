//
//  loginSelection.swift
//  SU_app
//
//  Created by Diana Galindo on 14/05/2023.
//

import SwiftUI
import SwiftUIMargin

struct loginSelection: View {
    var body: some View {
        NavigationStack{
            ZStack (alignment: .topTrailing){
                //Support image
                Image("eventsSupport_img")//decoration image
                    .renderingMode(.original)
                    .resizable()
                    .frame(width:118, height:215)
                    .offset(x:140, y:0)
                    .opacity(0.4)
                //Support image
                 Image("profileSupport_img")//decoration image
                     .renderingMode(.original)
                     .resizable()
                     .frame(width:100, height:215)
                     .offset(x:-160, y:0)
                     .opacity(0.4)
                Image("su_logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width:100, height:100)
                    .padding(.top, 50.0)
                    .margin(bottom:40)
            }
                
                VStack (alignment: .center){
                    VStack (alignment: .center){
                        Text("Welcome")
                            .font(.custom("Rubik-ExtraBold", size: 25))
                        Text("to your student union app! 👋")
                            .multilineTextAlignment(.center)
                            .font(.custom("Roboto-Regular", size: 20))
                            .margin(bottom:40)
                        Text("Who is logging in? ")
                            .multilineTextAlignment(.center)
                            .font(.custom("Roboto-Regular", size: 18))
                            .margin(bottom:25)
                        //Button
                        NavigationLink {
                            loginScreen_Student()
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).foregroundColor(colourSystem.corePink)
                                    .frame(width:290, height:60)
                                Text("I am a student")
                                    .foregroundColor(Color.white)
                                    .font(.custom("Roboto-Bold", size: 18))
                                    .bold()
                                //.padding(.all, 10.0)
                            }
                        }
                        .margin(bottom:15)
                        //                NavigationLink(destination: loginScreen_Student()){
                        //                    coreButton(ctaText: "I am a student", btnBackground: colourSystem.corePink) {
                        //                        //Attempt login
                        //                    }
                        //                }
                        
                        //Button
                        //                NavigationLink(destination: loginScreen_Committee_member()){
                        //                    coreButton(ctaText: "I am a commitee member", btnBackground: colourSystem.corePink) {
                        //                        //Attempt login
                        //                    }
                        //                }
                        NavigationLink {
                            loginScreen_Committee_member()
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10).foregroundColor(colourSystem.corePink)
                                    .frame(width:290, height:60)
                                Text("I am a committee member")
                                    .foregroundColor(Color.white)
                                    .font(.custom("Roboto-Bold", size: 18))
                                    .bold()
                                //.padding(.all, 10.0)
                            }
                        }
                        
                        
                    }
                    .frame(width: 350, height: 450)
                    .background(.white)
                    .cornerRadius(15)
                    .shadow(
                        color: .gray.opacity(0.4),
                        radius: 4,
                        x:0,
                        y:0)
                   
                    Spacer()
                    
                }// close main VStack
            
        }
        .navigationBarBackButtonHidden()
    }
}

struct loginSelection_Previews: PreviewProvider {
    static var previews: some View {
        loginSelection()
    }
}
