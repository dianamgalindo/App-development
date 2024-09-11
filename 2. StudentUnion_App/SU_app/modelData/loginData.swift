//
//  loginData.swift
//  SU_app
//
//  Created by Diana Galindo on 14/05/2023.
//  Hosting login data under one place

import Foundation
import SwiftUI

class loginData: ObservableObject{
    //track changes
    @Published var email = ""
    @Published var password = ""
    //notifying the user of invalid input
    @Published var invalidMessage = ""
    
    init(){}
    
    func loginUser(){
        invalidMessage = "" //once refreshed
        
        //if there's an empty field throw a message to the user
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            invalidMessage = "Please fill in all fields."
            return
        }
        //if the email is not an UAL address throw a message to the user
        guard email.contains("@arts.ac.uk") else {
            invalidMessage = "Plese enter a valid email"
            return
        }
        
        print("login successful")
    }
}
