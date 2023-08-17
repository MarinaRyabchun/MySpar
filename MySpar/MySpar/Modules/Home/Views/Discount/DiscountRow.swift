//
//  DiscountRow.swift
//  MySpar
//
//  Created by Марина Рябчун on 16.08.2023.
//

import SwiftUI

struct DiscountRow: View {
    let discount: Discount
    var body: some View {
        Button {
        } label: {
            Image(discount.imageName)
                .resizable()
                .cornerRadius(15)
                .frame(width: 320, height: 150)
        }
    }
}

struct DiscountRow_Previews: PreviewProvider {
    static var previews: some View {
        DiscountRow(discount: Discount.mockDiscount())
    }
}
