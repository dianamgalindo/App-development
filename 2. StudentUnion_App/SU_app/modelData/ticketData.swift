//
//  ticketData.swift
//  SU_app
//
//  Created by Diana Galindo on 31/05/2023.
//
import Foundation

struct Ticket: Identifiable {
    var id: Int
    var code: String
    var orderNumber: String
    
    var holderName: String
    var ticketType: String
    
    var eventName: String
    
    var eventDate: String
    var eventTime: String
    
    var eventLocation: String
    var eventAddress: String
    
    //Ticket Item info
    
    var eventImage: String
}

var ticketDetails = [

    Ticket(
        id:0,
        code: "Code_ID",
        orderNumber: "567910993",
        holderName: "Diana Milena Galindo",
        ticketType: "General Admission",
        eventName: "Pizza Party",
        eventDate: "Friday, May 11",
        eventTime: "Starts at 17:30",
        eventLocation: "CCI",
        eventAddress: "Peckham Road",
        eventImage: "societiesEvents_computerScience"
    ),
    Ticket(
        id:1,
        code: "Code_ID",
        orderNumber: "87569993",
        holderName: "Diana Milena Galindo",
        ticketType: "Free Ticket",
        eventName: "Green Roof Society",
        eventDate: "Thu 15 Jun at 16:00",
        eventTime: "Starts at 17:30",
        eventLocation: "CCI",
        eventAddress: "Granary Building,\nLondon, NC1 4AA",
        eventImage: "societiesEvents_gardening"
    ),
    Ticket(
        id:2,
        code: "Code_ID",
        orderNumber: "34626993",
        holderName: "Diana Milena Galindo",
        ticketType: "VIP",
        eventName: "Clay & play",
        eventDate: "Friday, May 11",
        eventTime: "Starts at 13:30",
        eventLocation: "Central Saint Martins",
        eventAddress: "Granary Building,\nLondon, NC1 4AA",
        eventImage: "societiesEvents_softRobotics"
    )
]
