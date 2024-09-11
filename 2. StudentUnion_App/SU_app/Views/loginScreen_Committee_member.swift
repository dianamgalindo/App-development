//
//  loginScreen_Committee_member.swift
//  SU_app
//
//  Created by Diana Galindo on 13/05/2023.
//

import SwiftUI

struct loginScreen_Committee_member: View {
    //properties
    @StateObject var viewData = loginData()//coming from loginData
    
    var body: some View {
        NavigationView{
            VStack {
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
                    Text("Let's log in")
                        .font(.custom("Rubik-ExtraBold", size: 25))
                        .bold()
                        .margin(top:40)
                        .margin(bottom:20)
                    Text("Please enter your university email address and password")
                        .font(.custom("Roboto-Regular", size: 18))
                        .frame(width:300)
                        
                    //Login form to access a normal student account
                    Form{
                        
                        //checking if the user input has been filled in
                        if !viewData.invalidMessage.isEmpty{
                            Text(viewData.invalidMessage)
                                .foregroundColor(Color.red)
                        }
                        
                        TextField("student email @arts.ac.uk*", text: $viewData.email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .autocapitalization(.none)
                            .autocorrectionDisabled()
                        
                        
                        SecureField("Enter your email password*", text: $viewData.password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        //Button
                        NavigationLink(destination: ContentViewMember()){
                            coreButton(ctaText: "login", btnBackground: colourSystem.corePink) {
                                viewData.loginUser()
                                //login user
                            }
                        }
                    }
                    .scrollContentBackground(.hidden) //hide default form background
                    
                
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
        
            }//close main VStack
            .padding(.horizontal)
        }
    }
}

struct loginScreen_Committee_member_Previews: PreviewProvider {
    static var previews: some View {
        loginScreen_Committee_member()
    }
}
