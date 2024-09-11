//
//  splashScreen.swift
//  SU_app
//
//  Created by Diana Galindo on 13/05/2023.
//

import SwiftUI

struct splashScreen: View {
    @State var isActive: Bool = false
    //initialize size and opacity
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            //ContentView()
            loginSelection()
            //loginScreen_Student()
        } else {
            ZStack{
                Image("splashScreenBackground")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    
                VStack{
                    Image("Arts_SU_logo_white")
                        .resizable()
                        .scaledToFill()
                        .frame(width:150, height:150)
                    //Text("Write something punchy")
                }
                //Effects
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration:1.5)) {//creating delay
                        self.size = 0.9
                        self.opacity = 1.00
                    }
                }
            }//close vstack
            
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct splashScreen_Previews: PreviewProvider {
    static var previews: some View {
        splashScreen()
    }
}
