//
//  RecommendedRow.swift
//  MySpar
//
//  Created by Марина Рябчун on 16.08.2023.
//

import SwiftUI

struct ProductRow: View {
    var product: Product
    let imageSize: CGFloat = 150
    
    var body: some View {
        Button {
        } label: {
            ZStack {
                VStack {
                    ProductTopView(imageName: product.imageName, tag: product.tag, discount: product.discount)
                    ProductBottomView(oldPrice: product.oldPrice, price: product.price, count: product.count, unit: product.unit)
                        .foregroundColor(.black)
                        .padding(.horizontal, 5)
                }
            }
        }
        .frame(width: 125, height: 170)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.vertical, 5)
        .shadow(radius: 4)
        
    }
}

struct RecommendedRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: Product.mockRecommendProduct())
    }
}
