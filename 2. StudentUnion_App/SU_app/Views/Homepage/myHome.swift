//
//  myHome.swift
//  SU_app
//
//  Created by Diana Galindo Clavijo on 27/04/2023.
//

import SwiftUI
import SwiftUIMargin

struct myHome: View {
    var body: some View {
        ScrollView{
         
                ZStack {
                    Image("home_support_img_V2")
                        .resizable()
//                        .edgesIgnoringSafeArea(.all)
                        .frame(width: 380, height: 180)
                        .offset(x:0, y:-50)
                        .opacity(0.6)
                    HStack{
                        Image("App_id_v2")
                            .resizable()
                            .scaledToFill()
                            .frame(width:70, height:70)
                            .clipShape(Circle())
                           
                        VStack(alignment: .leading){
                            Text("Student account")
                                .font(.custom("Roboto-Regular", size: 16))
                                .margin(bottom:5)
                            Text("Hello Diana!")
                                .font(.custom("Rubik-ExtraBold", size: 27))
                                .foregroundStyle(colourSystem.secondaryPurple)
    //                            .fontWeight(.heavy)
                            
                            
                           
                        }
                        .margin(left: 20)
                        Spacer()
                    
                    
                    }// close HStack
                    .offset(y:-20)
                
                }
                .margin(left: 20)
                //.margin(bottom: 25)
            VStack{
                eventRow(eventsPages: upcomingData[0])
                societyRow()
            }
            .offset(y:-25)
            
        }
        .padding(.horizontal)
       
    }
        
}

struct myHome_Previews: PreviewProvider {
    static var previews: some View {
        myHome()
    }
}
