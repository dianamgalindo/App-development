//
//  coreButton.swift
//  SU_app
//
//  Created by Diana Galindo on 14/05/2023.
//

import SwiftUI

struct coreButton: View {
    //properties
    let ctaText:String
    let btnBackground: Color
    let action:() -> Void //to allow the btn have an action
    
    var body: some View {
        Button{//action
            action()
        }label:{
            ZStack{
                RoundedRectangle(cornerRadius: 10).foregroundColor(btnBackground)
                    .frame(width:280, height:60)
                Text(ctaText)
                    .foregroundColor(Color.white)
                    .bold()
                    //.padding(.all, 10.0)
            }
            
        }
    }
}

struct coreButton_Previews: PreviewProvider {
    static var previews: some View {
        coreButton(ctaText: "Value", btnBackground: colourSystem.corePink){
            //Action
        }
    }
}
