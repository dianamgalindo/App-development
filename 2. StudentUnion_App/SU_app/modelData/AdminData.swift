//
//  AdminData.swift
//  SU_app
//
//  Created by Diana Galindo on 02/06/2023.
//

import Foundation


struct AdminItem: Identifiable{
    var id: Int
    var icon: String
    var description: String
}


var TasksItems = [

    AdminItem(
        id: 0,
        icon:"ToolOne",
        description: "Create a new event for your community"),
    AdminItem(
        id: 1,
        icon:"ToolTwo",
        description: "Health & Safety forms and requests"),
    AdminItem(
        id: 2,
        icon:"ToolThree",
        description: "Manage your community's finance"),
    AdminItem(
        id: 3,
        icon:"ToolFour",
        description: "Manage community's elections")

]

var ToolsItems = [
    
    AdminItem(
        id: 0,
        icon:"ToolFive",
        description: "Committee training modules"),
    AdminItem(
        id: 1,
        icon:"ToolSix",
        description: "App plugins"),
    AdminItem(
        id: 2,
        icon:"ToolSeven",
        description: "Community's Analytics"),
    AdminItem(
        id: 3,
        icon:"ToolEight",
        description: "Community's sponsors")


]
