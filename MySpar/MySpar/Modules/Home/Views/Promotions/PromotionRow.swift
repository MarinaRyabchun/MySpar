//
//  PromotionsRow.swift
//  MySpar
//
//  Created by Марина Рябчун on 16.08.2023.
//

import SwiftUI

struct PromotionsRow: View {

    var promo: Promotion
    let imageSize: CGFloat = 75
    
    var body: some View {
        Button {
        } label: {
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 100, height: 130)
                    .foregroundColor(promo.color)
                Text(promo.name)
                    .lineLimit(2)
                    .font(.system(size: 15, weight: .medium))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .frame(minWidth: 0, maxWidth: 85, alignment: .leading)
                    .offset(x: 5, y: -40)
                Image(promo.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: imageSize, height: imageSize, alignment: .center)
                    .offset(x: 10, y: 20)
            }
        }
    }
}

struct PromotionsRow_Previews: PreviewProvider {
    static var previews: some View {
        PromotionsRow(promo: Promotion.mockPromotion())
    }
}
