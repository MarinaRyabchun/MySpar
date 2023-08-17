//
//  DiscountView.swift
//  MySpar
//
//  Created by Марина Рябчун on 16.08.2023.
//

import SwiftUI

struct DiscountView: View {
    
    let discounts = Discounts.mockDiscounts()

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(discounts.discounts) { discount in
                    DiscountRow(discount: discount)
                }
            }
            .padding(.leading, 16)
        }
    }
}

struct DiscountView_Previews: PreviewProvider {
    static var previews: some View {
        DiscountView()
    }
}
