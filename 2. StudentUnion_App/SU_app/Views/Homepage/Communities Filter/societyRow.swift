//
//  societyRow.swift
//  SU_app
//
//  Created by Diana Galindo on 20/05/2023.
//
// Columns created following the "SwiftUI Grid Tutorial: https://www.youtube.com/watch?v=F-PcYUgUySk

import SwiftUI
import SwiftUIMargin



struct societyRow: View {
    
    //Styling columns
    let spacing: CGFloat = 10
    @State private var numberOfRows = 3
    
    let sections: [Filter] = Filter.allCases
    @State var chosen: Filter = .Societies
    

    let societies = communitiesSocietiesData
    let sports = communitiesSportsData
    

    var body: some View {
        
        //properties
        let columns = Array(repeating:GridItem(.flexible(), spacing:spacing),count: numberOfRows)
        
        
    
        VStack(alignment: .leading){
            Text("Communities")
                .foregroundStyle(colourSystem.secondaryPurple)
                .font(.custom("Rubik-ExtraBold", size: 26))
                .font(.headline)
                .padding(.leading, 0)
                .bold()
                .margin(bottom:25)
            Text("Small description into communities. Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
                .font(.custom("Roboto-Regular", size: 16))
                .lineSpacing(6)
                .margin(bottom:25)
            
            //filterView(selectedItem: $chosen, items: sections)
            filterView(viewModel: FilterViewModel(items: sections), selectedItem: $chosen)
            switch chosen {
                
            case .Societies:
                LazyVGrid(columns: columns, spacing: spacing) {
                    ForEach(communitiesSocietiesData) {data in
                        NavigationLink{
                            communityPage(communityData: data)
                            //indexTrack = indexCount + 1
                                //Navigation to dedicated event page
                            //eventPage(eventPageDetails: eventData[0])
                            } label: {
                                society_Item(communityEntryData: data)
                            }
                        }

                    }
            case .Sports:
                LazyVGrid(columns: columns, spacing: spacing) {
                    ForEach(communitiesSportsData) {data in
                        NavigationLink{
                            communityPage(communityData: data)
                            //indexTrack = indexCount + 1
                                //Navigation to dedicated event page
                            //eventPage(eventPageDetails: eventData[0])
                            } label: {
                                society_Item(communityEntryData: data)
                            }
                        }

                    }
                
            }
                        
            //Start of grid
//            LazyVGrid(columns: columns, spacing: spacing) {
//                ForEach(communitiesData) {data in
//                    NavigationLink{
//                        //indexTrack = indexCount + 1
//                            //Navigation to dedicated event page
//                        //eventPage(eventPageDetails: eventData[0])
//                        } label: {
//                            society_Item(communityEntryData: data)
//                        }
//                    }
//
//                }
                
            }
            .padding(.horizontal)
            
        }//close VStack
          
    }


struct societyRow_Previews: PreviewProvider {
    static var previews: some View {
        societyRow()
    }
}
