//
//  followedCommunities.swift
//  SU_app
//
//  Created by Diana Galindo on 29/05/2023.
//

import Foundation
import Combine

struct Following: Identifiable {
    var id: Int
    var logo: String
    var communityName: String
    var memberSince: String
    
    
    //Page details
    var keyword: String
    var keywordTwo: String
    var keywordThree: String
    var keywordFour: String
    
    var description: String
    
    var eventImageItem: String
    var eventNameItem: String
    var eventDateItem: String
    var eventDescriptionItem: String
    

    //Committee members
    var memberImage: String
    var memberName: String
    var memberRole: String
    
    var memberImageTwo: String
    var memberNameTwo: String
    var memberRoleTwo: String
    
    var memberImageThree: String
    var memberNameThree: String
    var memberRoleThree: String
    
    var memberImageFour: String
    var memberNameFour: String
    var memberRoleFour: String
    

}

//Followed Societies

var followedCommunities = [
    Following(
        id:0,
        logo: "societyLogo_book",
        communityName: "Book Club",
        memberSince: "Member since Jan 2021",
        
        keyword: "💻 Tech",
        keywordTwo: "✏️ Learning",
        keywordThree: "🤓 Code",
        keywordFour: "🥳 Socials",
       
        description: "Tech aficionados! Want to join a community of like-minded people who share your passion for tech and creativity? \nWelcome to our brand-spanking-new computer science society! Whether you're a seasoned coder or a newbie, our goal is to provide opportunities for our members to learn, grow, and network with others who share this interest.",
        
        eventImageItem:"societiesEvents_computerScience",
        eventNameItem:"Pizza party",
        eventDateItem:"Thu 15 Jun at 16:00",
        eventDescriptionItem:"Join us as we kick off this exciting new venture with an evening of networking and pizza (of course).",
                    
        memberImage: "societyMember_CompScience_five",
        memberName: "Diana Galindo",
        memberRole: "Social Media",
       
        memberImageTwo: "societyMember_CompScience_two",
        memberNameTwo: "Riku Mito",
        memberRoleTwo: "President",
       
        memberImageThree: "societyMember_CompScience_four",
        memberNameThree: "Ben",
        memberRoleThree: "Treasurer",
       
        memberImageFour: "societyMember_CompScience",
        memberNameFour: "Kourosh",
        memberRoleFour: "Events Manager"),
    
    Following(
        id:1,
        logo: "sportLogo_volleyball",
        communityName: "Volleyball",
        memberSince: "Member since Sept 2023",
        keyword: "💻 Tech",
        keywordTwo: "✏️ Learning",
        keywordThree: "🤓 Code",
        keywordFour: "🥳 Socials",
       
        description: "Tech aficionados! Want to join a community of like-minded people who share your passion for tech and creativity? \nWelcome to our brand-spanking-new computer science society! Whether you're a seasoned coder or a newbie, our goal is to provide opportunities for our members to learn, grow, and network with others who share this interest.",
        
        eventImageItem:"societiesEvents_computerScience",
        eventNameItem:"Pizza party",
        eventDateItem:"Thu 15 Jun at 16:00",
        eventDescriptionItem:"Join us as we kick off this exciting new venture with an evening of networking and pizza (of course).",
                    
        memberImage: "societyMember_CompScience_five",
        memberName: "Diana Galindo",
        memberRole: "Social Media",
       
        memberImageTwo: "societyMember_CompScience_two",
        memberNameTwo: "Riku Mito",
        memberRoleTwo: "President",
       
        memberImageThree: "societyMember_CompScience_four",
        memberNameThree: "Ben",
        memberRoleThree: "Treasurer",
       
        memberImageFour: "societyMember_CompScience",
        memberNameFour: "Kourosh",
        memberRoleFour: "Events Manager")
    
]
