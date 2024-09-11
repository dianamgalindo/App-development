//
//  communitiesData.swift
//  SU_app
//
//  Created by Diana Galindo on 21/05/2023.
//

import Foundation
import Combine //to keep track of ObervableObjects
import MapKit

struct Communities: Identifiable {
    var id: Int
    var logo: String
    var communityName: String
    
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
    
    //Messages
    var contactImg: String
    var contactName: String
    var contactMsg: String
}

//SOCIETIES DATA
var communitiesSocietiesData = [
    Communities(
             id:0,
             logo: "societyLogo_computerScience",
             communityName:"Computer Science Society",
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
             memberRoleFour: "Events Manager",
    
            contactImg:"societyLogo_computerScience",
            contactName:"Society general communications",
            contactMsg: "Lorem ipsum is simply dummy..."),
    Communities(
             id:1,
             logo: "societyLogo_greenRoof",
             communityName:"Green Roof Society",
             keyword: "🌱 Grow",
             keywordTwo: "😌 Relax",
             keywordThree: "🤓 Learn",
             keywordFour: "🥳 Socials",
            
             description: "The Green Roof Society is a UAL student society which aims to maintain and build upon the roof terrace at CSM—a green space w/ edibles, pollinator plants, bespoke structures, and a dye garden.",
             
             eventImageItem:"societiesEvents_computerScience",
             eventNameItem:"Pizza party",
             eventDateItem:"Thu 15 Jun at 16:00",
             eventDescriptionItem:"Join us as we kick off this exciting new venture with an evening of networking and pizza (of course).",
                         
             memberImage: "societyMember_Garden_one",
             memberName: "Alex",
             memberRole: "President",
            
             memberImageTwo: "societyMember_Garden_two",
             memberNameTwo: "Sif",
             memberRoleTwo: "Treasurer",
            
             memberImageThree: "",
             memberNameThree: "",
             memberRoleThree: "",
            
             memberImageFour: "",
             memberNameFour: "",
             memberRoleFour: "",
             
             contactImg:"societyMember_Garden_one",
             contactName:"Juan Galindo",
             contactMsg: "Lorem ipsum is simply dummy..."),
    Communities(
             id:2,
             logo: "societyLogo_ceramics",
             communityName:"Ceramics Society",
             keyword: "🤲 Create",
             keywordTwo: "👷‍♀️Develop",
             keywordThree: "✨ Connect",
             keywordFour: "🗣️ Talks",
            
             description: "Small description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Mall description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry",
             
             eventImageItem:"societiesEvents_computerScience",
             eventNameItem:"Pizza party",
             eventDateItem:"Thu 15 Jun at 16:00",
             eventDescriptionItem:"Join us as we kick off this exciting new venture with an evening of networking and pizza (of course).",
            
             memberImage: "societyLogo_computerScience",
             memberName: "Lea Brunet",
             memberRole: "Social Media",
            
             memberImageTwo: "societyLogo_computerScience",
             memberNameTwo: "Olivia Augusta",
             memberRoleTwo: "President",
            
             memberImageThree: "",
             memberNameThree: "",
             memberRoleThree: "",
            
             memberImageFour: "",
             memberNameFour: "",
             memberRoleFour: "",
             
             contactImg:"societyMember_Architecture_three",
             contactName:"Thomas blanchard",
             contactMsg: "Lorem ipsum is simply dummy..."),
    Communities(
             id:3,
             logo: "societyLogo_architecture",
             communityName:"Architecture Society",
             keyword: "📁 Work",
             keywordTwo: "🤓 Network",
             keywordThree: "🏙️ Expertise",
             keywordFour: "🙌 Collabs",
            
             description: "AS:CSM is a student-led society for the people of Spatial Practices. We believe in the importance of collaborative working, being one community, and having a social and political agenda. The society provides a platform of opportunities, to support the engagement of students and generate networks within the college and across London. Our approach is through sharing ideas, experiences, and knowledge with an open mind; helping each other as we are all here to pursue our path and emerge as young practitioners into the world.",
             
             eventImageItem:"societiesEvents_computerScience",
             eventNameItem:"Pizza party",
             eventDateItem:"Thu 15 Jun at 16:00",
             eventDescriptionItem:"Join us as we kick off this exciting new venture with an evening of networking and pizza (of course).",
             
             memberImage: "societyMember_Architecture_one",
             memberName: "Jemima Abedin",
             memberRole: "President",
            
             memberImageTwo: "societyMember_Architecture_two",
             memberNameTwo: "Daria Stanuica",
             memberRoleTwo: "Vice President",
            
             memberImageThree: "societyMember_Architecture_three",
             memberNameThree: "Ramish Shahbaz",
             memberRoleThree: "Treasurer",
            
             memberImageFour: "societyMember_Architecture_four",
             memberNameFour: "Rebut Kamal",
             memberRoleFour: "Connector",
             
             contactImg:"societyMember_Garden_two",
             contactName:"Betty MacCann",
             contactMsg: "Lorem ipsum is simply dummy..."),
    
    Communities(
             id:4,
             logo: "societyLogo_book",
             communityName:"Book Club",
             keyword: "📚 Classics",
             keywordTwo: "🤓 Critics",
             keywordThree: "✍️ Writing",
             keywordFour: "🥳 Socials",
            
             description: "Small description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Mall description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry",
             
             eventImageItem:"societiesEvents_computerScience",
             eventNameItem:"Pizza party",
             eventDateItem:"Thu 15 Jun at 16:00",
             eventDescriptionItem:"Join us as we kick off this exciting new venture with an evening of networking and pizza (of course).",
             
             memberImage: "societyLogo_computerScience",
             memberName: "Diana Galindo",
             memberRole: "Social Media",
            
             memberImageTwo: "societyLogo_computerScience",
             memberNameTwo: "Riku Mito",
             memberRoleTwo: "President",
            
             memberImageThree: "societyLogo_computerScience",
             memberNameThree: "Ben",
             memberRoleThree: "Treasurer",
            
             memberImageFour: "societyLogo_computerScience",
             memberNameFour: "Kourosh",
             memberRoleFour: "Events Manager",
             
             contactImg:"societyMember_CompScience_four",
             contactName:"Ben Tweaks",
             contactMsg: "Lorem ipsum is simply dummy..."),
    Communities(
             id:5,
             logo: "societyLogo_drama",
             communityName:"Drama society",
             keyword: "💪 Exercise",
             keywordTwo: "🎭 Technique",
             keywordThree: "🎶 sing",
             keywordFour: "🥳 Socials",
            
             description: "Small description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Mall description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry",
             
             eventImageItem:"societiesEvents_computerScience",
             eventNameItem:"Pizza party",
             eventDateItem:"Thu 15 Jun at 16:00",
             eventDescriptionItem:"Join us as we kick off this exciting new venture with an evening of networking and pizza (of course).",
             
             memberImage: "societyLogo_computerScience",
             memberName: "Diana Galindo",
             memberRole: "Social Media",
            
             memberImageTwo: "societyLogo_computerScience",
             memberNameTwo: "Riku Mito",
             memberRoleTwo: "President",
            
             memberImageThree: "societyLogo_computerScience",
             memberNameThree: "Ben",
             memberRoleThree: "Treasurer",
            
             memberImageFour: "societyLogo_computerScience",
             memberNameFour: "Kourosh",
             memberRoleFour: "Events Manager",
             
             contactImg:"societyMember_CompScience_four",
             contactName:"Ben Tweaks",
             contactMsg: "Lorem ipsum is simply dummy...")
    
]

//SPORTS CLUBS DATA
var communitiesSportsData = [
    Communities(
            id:0,
            logo: "sportLogo_badminton",
            communityName:"Badminton",
            keyword: "🏸 Outdoors",
            keywordTwo: "👟 Coach",
            keywordThree: "🤼 Fixtures",
            keywordFour: "🥳 Socials",
            
            description: "Small description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Mall description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry",
            
            eventImageItem:"societiesEvents_computerScience",
            eventNameItem:"Pizza party",
            eventDateItem:"Thu 15 Jun at 16:00",
            eventDescriptionItem:"Join us as we kick off this exciting new venture with an evening of networking and pizza (of course).",
           
            memberImage: "societyLogo_computerScience",
            memberName: "Diana Galindo",
            memberRole: "Social Media",
           
            memberImageTwo: "societyLogo_computerScience",
            memberNameTwo: "Riku Mito",
            memberRoleTwo: "President",
           
            memberImageThree: "societyLogo_computerScience",
            memberNameThree: "Ben",
            memberRoleThree: "Treasurer",
           
            memberImageFour: "societyLogo_computerScience",
            memberNameFour: "Kourosh",
            memberRoleFour: "Events Manager",
            
            contactImg:"App_id_v2",
            contactName:"Society general communications",
            contactMsg: "Lorem ipsum is simply dummy..."),
    Communities(
            id:1,
            logo: "sportLogo_hockey",
            communityName:"Hockey",
            keyword: "⛸ Skate",
            keywordTwo: "💪 Exercise",
            keywordThree: "🤼 Fixtures",
            keywordFour: "🥳 Socials",
           
            description: "Small description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Mall description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry",
            
            eventImageItem:"societiesEvents_computerScience",
            eventNameItem:"Pizza party",
            eventDateItem:"Thu 15 Jun at 16:00",
            eventDescriptionItem:"Join us as we kick off this exciting new venture with an evening of networking and pizza (of course).",
        
            memberImage: "societyLogo_computerScience",
            memberName: "Diana Galindo",
            memberRole: "Social Media",
           
            memberImageTwo: "societyLogo_computerScience",
            memberNameTwo: "Riku Mito",
            memberRoleTwo: "President",
           
            memberImageThree: "societyLogo_computerScience",
            memberNameThree: "Ben",
            memberRoleThree: "Treasurer",
           
            memberImageFour: "societyLogo_computerScience",
            memberNameFour: "Kourosh",
            memberRoleFour: "Events Manager",
            
            contactImg:"societyMember_Garden_one",
            contactName:"Society general communications",
            contactMsg: "Lorem ipsum is simply dummy..."),
    Communities(
            id:2,
            logo: "sportLogo_mensFootball",
            communityName:"Men's Football",
            keyword: "📺 Clasics",
            keywordTwo: "👟 Technique",
            keywordThree: "⚽️ Matches",
            keywordFour: "🥳 Socials",
           
            description: "Small description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Mall description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry",
            
            eventImageItem:"societiesEvents_computerScience",
            eventNameItem:"Pizza party",
            eventDateItem:"Thu 15 Jun at 16:00",
            eventDescriptionItem:"Join us as we kick off this exciting new venture with an evening of networking and pizza (of course).",
        
            memberImage: "societyLogo_computerScience",
            memberName: "Diana Galindo",
            memberRole: "Social Media",
           
            memberImageTwo: "societyLogo_computerScience",
            memberNameTwo: "Riku Mito",
            memberRoleTwo: "President",
           
            memberImageThree: "societyLogo_computerScience",
            memberNameThree: "Ben",
            memberRoleThree: "Treasurer",
           
            memberImageFour: "societyLogo_computerScience",
            memberNameFour: "Kourosh",
            memberRoleFour: "Events Manager",
            
            contactImg:"App_id_v2",
            contactName:"Society general communications",
            contactMsg: "Lorem ipsum is simply dummy..."),
    Communities(
            id:3,
            logo: "sportLogo_volleyball",
            communityName:"Volleyball",
            keyword: "👟 Coach",
            keywordTwo: "🏐 Technique",
            keywordThree: "💪 Exercise",
            keywordFour: "🥳 Socials",
           
            description: "Small description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Mall description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry",
            
            eventImageItem:"societiesEvents_computerScience",
            eventNameItem:"Pizza party",
            eventDateItem:"Thu 15 Jun at 16:00",
            eventDescriptionItem:"Join us as we kick off this exciting new venture with an evening of networking and pizza (of course).",
            
            memberImage: "societyLogo_computerScience",
            memberName: "Diana Galindo",
            memberRole: "Social Media",
           
            memberImageTwo: "societyLogo_computerScience",
            memberNameTwo: "Riku Mito",
            memberRoleTwo: "President",
           
            memberImageThree: "societyLogo_computerScience",
            memberNameThree: "Ben",
            memberRoleThree: "Treasurer",
           
            memberImageFour: "societyLogo_computerScience",
            memberNameFour: "Kourosh",
            memberRoleFour: "Events Manager",
            
            contactImg:"App_id_v2",
            contactName:"Society general communications",
            contactMsg: "Lorem ipsum is simply dummy..."),
    Communities(
             id:4,
             logo: "sportLogo_football",
             communityName:"Women's Football",
             keyword: "📺 Clasics",
             keywordTwo: "👟 Technique",
             keywordThree: "⚽️ Matches",
             keywordFour: "🥳 Socials",
            
             description: "Small description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Mall description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry",
             
             eventImageItem:"societiesEvents_computerScience",
             eventNameItem:"Pizza party",
             eventDateItem:"Thu 15 Jun at 16:00",
             eventDescriptionItem:"Join us as we kick off this exciting new venture with an evening of networking and pizza (of course).",
             
             memberImage: "societyLogo_computerScience",
             memberName: "Diana Galindo",
             memberRole: "Social Media",
            
             memberImageTwo: "societyLogo_computerScience",
             memberNameTwo: "Riku Mito",
             memberRoleTwo: "President",
            
             memberImageThree: "societyLogo_computerScience",
             memberNameThree: "Ben",
             memberRoleThree: "Treasurer",
            
             memberImageFour: "societyLogo_computerScience",
             memberNameFour: "Kourosh",
             memberRoleFour: "Events Manager",
             contactImg:"App_id_v2",
             contactName:"Society general communications",
             contactMsg: "Lorem ipsum is simply dummy..."),
    Communities(
             id:5,
             logo: "sportLogo_skate",
             communityName:"Skate plus Blade",
             keyword: "🛹 Skate",
             keywordTwo: "🥳 Socials",
             keywordThree: "🏞️ Parks",
             keywordFour: "🤼 Compete",
            
             description: "Small description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Mall description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry",
             
             eventImageItem:"societiesEvents_computerScience",
             eventNameItem:"Pizza party",
             eventDateItem:"Thu 15 Jun at 16:00",
             eventDescriptionItem:"Join us as we kick off this exciting new venture with an evening of networking and pizza (of course).",
             
             memberImage: "societyLogo_computerScience",
             memberName: "Diana Galindo",
             memberRole: "Social Media",
            
             memberImageTwo: "societyLogo_computerScience",
             memberNameTwo: "Riku Mito",
             memberRoleTwo: "President",
            
             memberImageThree: "societyLogo_computerScience",
             memberNameThree: "Ben",
             memberRoleThree: "Treasurer",
            
             memberImageFour: "societyLogo_computerScience",
             memberNameFour: "Kourosh",
             memberRoleFour: "Events Manager",
             
             contactImg:"societyMember_CompScience_two",
             contactName:"Rikku Mito",
             contactMsg: "Lorem ipsum is simply dummy...")
]
