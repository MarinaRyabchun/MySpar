//
//  ProductBottomView.swift
//  MySpar
//
//  Created by Марина Рябчун on 17.08.2023.
//

import SwiftUI

struct ProductBottomView: View {
    
    let oldPrice: Double
    let price: Double
    let count: Double
    let unit: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                HStack {
                    Text("\(price.roundedToTwoDecimalPlacesString())")
                        .font(.system(size: 15, weight: .bold))
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                        .foregroundColor(.black)
                    UnitView(count: count, unit: unit)
                }
                
                if oldPrice != price {
                    Text("\(oldPrice.roundedToTwoDecimalPlacesString())").strikethrough(color: .gray)
                        .font(.system(size: 13))
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                        .foregroundColor(.gray)
                }
            }
            Spacer()
            Button {
            } label: {
                ZStack {
                    Circle()
                        .foregroundColor(.green)
                    Image(systemName: Constants.Image.basket)
                        .resizable()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.white)
                }
                .frame(width: 35, height: 35)
            }
            .padding(.bottom, 5)
        }
    }
}

struct ProductBottomView_Previews: PreviewProvider {
    static var previews: some View {
        ProductBottomView(oldPrice: 200.00, price: 180.00, count: 1.00, unit: "шт")
    }
}
