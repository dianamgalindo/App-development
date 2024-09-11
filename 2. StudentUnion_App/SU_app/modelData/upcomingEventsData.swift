//
//  upcomingEventsData.swift
//  SU_app
//
//  Created by Diana Galindo on 20/05/2023.
//

import Foundation
import Combine //to keep track of ObervableObjects
import MapKit

struct Upcoming: Identifiable {
    var id: Int
    var logo: String
    var eventImageItem: String
    var eventNameItem: String
    var eventDateItem: String
    var eventDescriptionItem: String
    
    //Events Page details
    var eventImage: String
    var eventName: String
    
    //event date details
    var eventDate: String
    var eventDateDetail: String
    
    //event location details
    var eventLocation: String
    var eventLocationDetail: String
    
    //event price details
    var eventPrice: String
    var eventPriceDetail: String
    
    //event extended description
    var eventDescription: String
    var eventLocationMap: String
    
    //event map details
    var eventlocationName: String
    var eventCoordinate: CLLocationCoordinate2D
}

//Insert upcoming events images
var upcomingData = [
    Upcoming(id:0,
             logo: "societyLogo_computerScience",
             eventImageItem:"societiesEvents_computerScience",
             eventNameItem:"Pizza party",
             eventDateItem:"Thu 15 Jun at 16:00",
             eventDescriptionItem:"Join us as we kick off this exciting new venture with an evening of networking and pizza (of course).",
             
             //events page details
             eventImage:"societiesEvents_computerScience",
             eventName:"Pizza party",
             eventDate:"Thu 15 Jun at 16:00",
             eventDateDetail:"22:30 - 04:00 GMT + 10:00",
             eventLocation:"Creative Computing Institute",
             eventLocationDetail:"45-65 Peckham Rd, London SE5 8UF",
             eventPrice: "Free",
             eventPriceDetail: "This is a free event",
             eventDescription:"Get ready to fire up your laptops and connect with like-minded tech enthusiasts because the inaugural social event of our new computer science society is finally here! \nSo mark your calendars for this 1st of March and get ready to join the party - we can't wait to see you there!",
             eventLocationMap:"45-65 Peckham Rd, London SE5 8UF",
             eventlocationName: "45-65 Peckham Rd, London SE5 8UF",
             eventCoordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.1)),
    
    Upcoming(id:1,
             logo: "societyLogo_greenRoof",
             eventImageItem:"societiesEvents_gardening",
             eventNameItem:"CSM gardeners",
             eventDateItem:"Wed 1 Jul at 11:00",
             eventDescriptionItem:"Have you ever heard of a 'planting ceremony'? Come and get your hands dirty, and help use build the biggest roof-garden in London!.",
             
             //events page details
             eventImage:"societiesEvents_gardening",
             eventName:"CSM garden",
             eventDate:"Wed 1 Jul at 11:00",
             eventDateDetail:"16:00 - 18:00 GMT + 10:00",
             eventLocation:"Central Saint Martins",
             eventLocationDetail:"Granary Building, London, NC1 4AA",
             eventPrice: "£5",
             eventPriceDetail: "No refunds",
             eventDescription:"Next week is Welcome Week and as a part of that, we are hosting a plant dyeing session on Wednesday, Sept. 22nd on the green roof at CSM! We will also have an info booth at the Welcome Fair at Chelsea College on Tues., 21st.: drop by and say hello. \nWith print and dye specialist Florence Hawkins, we'll be experimenting with colors produced by plants grown on the roof, food waste, foraged plants, and more on fabric to knot together a collaborative soft sculpture. There will be herb-infused iced tea and casual conversation :) for those of you that RSVPd or for anyone who wants more information, search 'plant dye workshop' on the UAL website under 'what's on' 🌗🌀🌱🐝🍃.",
             eventLocationMap:"Granary Building, London, NC1 4AA",
             eventlocationName: "Granary Building, London, NC1 4AA",
             eventCoordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.1)),
    
    Upcoming(id:2,
             logo: "societyLogo_ceramics",
             eventImageItem:"societiesEvents_ceramics",
             eventNameItem:"Clay & play",
             eventDateItem:"Sat 1 Apr at 11:00",
             eventDescriptionItem:"Explore your potential and creativity through the medium of ceramics, overseen by a professional ceramist.",
             
             //events page details
             eventImage:"societiesEvents_ceramics",
             eventName:"Ceramics",
             eventDate:"Sat 1 Apr at 11:00",
             eventDateDetail:"11:00 - 12:30 GMT + 10:00",
             eventLocation:"Central Saint Martins",
             eventLocationDetail:"Granary Building, London, NC1 4AA",
             eventPrice: "£4",
             eventPriceDetail: "No refunds",
             eventDescription:"We are partnering with Wodeceramics to bring you an artist talk, live demo and private workshops this Easter! (You can make your own tiny porcelain pottery :O)vWe have subsidised tickets available for all members starting at £4, with the chance to win the espresso mug made by the Jingdezhen trained artist in our last slide!\nCome along to CSM and see the master mini ceramicist live at our talk on Saturday 1st of April! (11am-12:30pm) online option available too if you can’t join us IRL!",
             eventLocationMap:"Granary Building, London, NC1 4AA",
             eventlocationName: "Granary Building, London, NC1 4AA",
             eventCoordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.1))
]

var upcomingSocietyData = [
    Upcoming(id:0,
             logo: "societyLogo_computerScience",
             eventImageItem:"societiesEvents_computingMuseum",
             eventNameItem:"Museum visit",
             eventDateItem:"Sat 1 Apr at 11:00",
             eventDescriptionItem:"Follow the development of computing: from the Turing-Welchman Bombe and Colossus to the rise of personal computing",
             
             //events page details
             eventImage:"societiesEvents_computingMuseum",
             eventName:"Museum visit",
             eventDate:"Sat 1 Apr at 11:00",
             eventDateDetail:"11:00 - 12:30 GMT + 10:00",
             eventLocation:"Bletchley Park",
             eventLocationDetail:"Bletchley, Milton Keynes MK3 6EB",
             eventPrice: "£10",
             eventPriceDetail: "Incl. transport",
             eventDescription:"The National Museum of Computing, located on Bletchley Park, is an independent charity housing the world's largest collection of functional historic computers and WW2 machines, including, Enigma, Lorenz the working Turing-Welchman Bombe, the rebuilt Colossus, the world’s first electronic computer, and the WITCH, the world's oldest working digital computer. The museum enables visitors to follow the development of computing from the ultra-secret pioneering efforts of the 1940s through the large systems and mainframes of the 1950s, 60s and 70s, and the rise of personal computing in the 1980s and beyond.\n Come with us on this amazing trip !",
             eventLocationMap:"Block H, Bletchley Park, Bletchley, Milton Keynes MK3 6EB",
             eventlocationName: " Bletchley, Milton Keynes MK3 6EB",
             eventCoordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.1)),
            
    Upcoming(id:1,
             logo: "societyLogo_computerScience",
             eventImageItem:"societiesEvents_softRobotics",
             eventNameItem:"Soft Robotics",
             eventDateItem:"Wed 1 Jul at 11:00",
             eventDescriptionItem:"Have you ever wondered what is Soft robotic? Come to our workshop where we explore how this field will shape the future of HCI.",
             
             //events page details
             eventImage:"societiesEvents_softRobotics",
             eventName:"Soft Robotics",
             eventDate:"Wed 1 Jul at 11:00",
             eventDateDetail:"16:00 - 18:00 GMT + 10:00",
             eventLocation:"Creative Computing Institute",
             eventLocationDetail:"45-65 Peckham Rd, London SE5 8UF",
             eventPrice: "£5",
             eventPriceDetail: "No refunds",
             eventDescription:"Recently, subdomains of Human-Computer interaction (HCI), such as Tangible Interfaces and Haptics, have experienced disruptive hardware transformations owing to advances in Soft Robotics and Programmable Materials. How will these fields shape the future of HCI over the next decade and beyond? . During this participatory workshop, we will be exploring a variety of research topics and questions across multiple categories related to the workshop goals. We will explore current challenges and opportunities for advancing the field, making is more accessible, lowering barriers, accelerating innovation, and enabling new opportunities for creativity and expression.",
             eventLocationMap:"45-65 Peckham Rd, London SE5 8UF",
             eventlocationName: "45-65 Peckham Rd, London SE5 8UF",
             eventCoordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.1)),
    
    Upcoming(id:2,
             logo: "societyLogo_computerScience",
             eventImageItem:"societiesEvents_computerScience",
             eventNameItem:"Pizza party",
             eventDateItem:"Thu 15 Jun at 16:00",
             eventDescriptionItem:"Join us as we kick off this exciting new venture with an evening of networking and pizza (of course).",
             
             //events page details
             eventImage:"societiesEvents_computerScience",
             eventName:"Pizza party",
             eventDate:"Thu 15 Jun at 16:00",
             eventDateDetail:"22:30 - 04:00 GMT + 10:00",
             eventLocation:"Creative Computing Institute",
             eventLocationDetail:"45-65 Peckham Rd, London SE5 8UF",
             eventPrice: "Free",
             eventPriceDetail: "This is a free event",
             eventDescription:"Get ready to fire up your laptops and connect with like-minded tech enthusiasts because the inaugural social event of our new computer science society is finally here! \nSo mark your calendars for this 1st of March and get ready to join the party - we can't wait to see you there!",
             eventLocationMap:"45-65 Peckham Rd, London SE5 8UF",
             eventlocationName: "45-65 Peckham Rd, London SE5 8UF",
             eventCoordinate: CLLocationCoordinate2D(latitude: 51.501, longitude: -0.1))
]
