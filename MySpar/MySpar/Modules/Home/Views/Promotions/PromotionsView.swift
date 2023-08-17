//
//  PromotionsView.swift
//  MySpar
//
//  Created by Марина Рябчун on 16.08.2023.
//

import SwiftUI

struct PromotionsView: View {
    
    let promotions = Promotions.mockPromotions()

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(promotions.promotions) { promotion in
                    PromotionsRow(promo: promotion)
                }
                .padding(.trailing, 5)
            }
            .padding(.leading, 16)
        }
    }
}

struct PromotionsView_Previews: PreviewProvider {
    static var previews: some View {
        PromotionsView()
    }
}
