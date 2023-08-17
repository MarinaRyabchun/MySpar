//
//  HomeView.swift
//  MySpar
//
//  Created by Марина Рябчун on 16.08.2023.
//

import SwiftUI

struct HomeView: View {
    
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 15) {
                    StoriesView()
                    DiscountView()
                    BonusView()
                    PromotionsView()
                    ProductСategoryViews()
                }
            }
            .padding(.vertical, 15)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        SearchView(searchText: $searchText)
                        Button {
                        } label: {
                            Image("menu")
                                .resizable()
                                .frame(width: 25, height: 20)
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
