//
//  filterView.swift
//  SU_app
//
//  Created by Diana Galindo on 22/05/2023.
// Based on the Horizontal Filter View Tutorial : https://betterprogramming.pub/swiftui-basics-horizontal-filter-view-fb031fbe7e40

import SwiftUI

enum Filter: String, CaseIterable {
    case Societies, Sports
}
//********************

//struct FilterItemViewModel: Hashable {
//    let filterCategory: Filter
//    let btnColor: Color
//    
//    var title: String {
//        filterCategory.rawValue
//    }
//    
//    //originally coded as an extendable
//    static func standard(category: Filter) -> FilterItemViewModel {
//        return FilterItemViewModel(filterCategory: category, btnColor: colourSystem.corePink)
//    }
//}

//********************

//struct filterView: View {
//    @Binding var selectedItem: Filter
//    var items: [Filter]
//    @State private var active: Bool = false
//
//    var body: some View {
//
//        HStack(){
//            ForEach(items, id: \.self) {item in
//                Text(item.rawValue)
//                    .onTapGesture {
//                        selectedItem = item
//                    }
//                    .frame(width: 180, height: 50)
//                    .foregroundColor(.white)
//                    .clipShape(Capsule())
//                    .background(active ? Color.blue : colourSystem.corePink)
//                    .cornerRadius(10)
//
//            }
//        }
//    }
//}


//struct filterView_Previews: PreviewProvider {
//    //static let sections = Filter.allCases
//    static var previews: some View {
//        filterView(selectedItem: .constant(.Societies), items: Filter.allCases)
//    }
//}
