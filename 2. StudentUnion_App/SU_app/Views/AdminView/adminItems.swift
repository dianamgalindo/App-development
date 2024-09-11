//
//  adminItems.swift
//  SU_app
//
//  Created by Diana Galindo on 02/06/2023.
//

import SwiftUI
import SwiftUIMargin

struct adminItems: View {
    var adminItemsData: AdminItem
    var body: some View {
        VStack(alignment: .center){
            Image(adminItemsData.icon)
                .resizable()
                .scaledToFill()
                .frame(width:100, height:100)
                .clipShape(Circle())
            Text(adminItemsData.description)
                .font(.custom("Roboto-Regular", size: 16))
                .padding()
                .lineSpacing(6)
        }
        .frame(width: 180, height: 250)
        .background(.white)
        .cornerRadius(15)
        .shadow(
            color: .gray.opacity(0.4),
            radius: 4,
            x:0,
            y:0)
        .padding(.leading, 10)
        .padding(.top, 5)
        .padding(.bottom, 5)
    }
  
}

struct adminItems_Previews: PreviewProvider {
    static var previews: some View {
        adminItems(adminItemsData: TasksItems[0])
    }
}
