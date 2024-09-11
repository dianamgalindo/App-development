//
//  filterItem.swift
//  SU_app
//
//  Created by Diana Galindo on 23/05/2023.
// Based on the Horizontal Filter View Tutorial : https://betterprogramming.pub/swiftui-basics-horizontal-filter-view-fb031fbe7e40

import SwiftUI

struct FilterItemViewModel: Hashable {
    let filterCategory: Filter
    let btnColor: Color
    
    var title: String {
        filterCategory.rawValue
    }
    
    //originally coded as an extendable
    static func standard(category: Filter) -> FilterItemViewModel {
        return FilterItemViewModel(filterCategory: category, btnColor: .white)
    }
}

//*************************
struct filterItem: View {
    
    var viewModel: FilterItemViewModel
    
    @Binding var selectedItem: Filter
    
    var body: some View {
        ZStack() {
            Text(viewModel.title)
                .frame(width: 180, height: 50)
                .foregroundColor(selectedItem == viewModel.filterCategory ? .white : .white)
                .background(colourSystem.secondaryPink)
                .opacity(0.8)
                .clipShape(Capsule())
                .cornerRadius(10)
             
            if selectedItem == viewModel.filterCategory{
                Text(viewModel.title)
                    .frame(width: 180, height: 50)
                    .background(colourSystem.corePink)
                    .clipShape(Capsule())
                    .cornerRadius(10)
                    .foregroundColor(.white)
                
            }
        }
    }
}

//*************************
struct FilterViewModel {
    private var items: [Filter]
    
    init(items: [Filter]) {
        self.items = items
    }
    
    var filters: [FilterItemViewModel] {
        return items.map {FilterItemViewModel.standard(category: $0)}
    }
}

//*************************
struct filterView: View {
    
    var viewModel: FilterViewModel
    @Binding var selectedItem: Filter
    //@State private var active: Bool = false
    
    var body: some View {
        
        HStack(){
            ForEach(viewModel.filters, id: \.self) {viewModel in
                filterItem(viewModel: viewModel, selectedItem: $selectedItem)
                    .onTapGesture {
                        selectedItem = viewModel.filterCategory
                    }
            }
        }
    }
}


//struct filterItem_Previews: PreviewProvider {
//    static let sections = Filter.allCases
//    static var previews: some View {
//        filterItem(viewModel:(items: sections), selectedItem: .constant(.Societies))
//    }
//}

//struct filterView_Previews: PreviewProvider {
//    //static let sections = Filter.allCases
//    static var previews: some View {
//        filterView(selectedItem: .constant(.Societies), items: Filter.allCases)
//    }
//}
