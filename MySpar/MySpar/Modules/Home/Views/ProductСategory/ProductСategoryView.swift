//
//  RecommendedView.swift
//  MySpar
//
//  Created by Марина Рябчун on 16.08.2023.
//

import SwiftUI

struct ProductСategoryView: View {
    var category: ProductСategory
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(category.name)
                .font(.system(size: 20, weight: .bold))
                .padding(.horizontal, 16)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(category.products) { product in
                        ProductRow(product: product)
                    }
                }
                .padding(.horizontal, 16)
            }
        }
    }
}

struct ProductСategoryViews: View {
    
    let category = DataProducts()
    
    var body: some View {
        ScrollView {
            ForEach(category.products) { category in
                ProductСategoryView(category: category)
            }
        }
    }
}

struct RecommendedView_Previews: PreviewProvider {
    static var previews: some View {
        ProductСategoryViews()
    }
}
