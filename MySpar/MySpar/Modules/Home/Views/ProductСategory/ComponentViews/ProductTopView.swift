//
//  ProductTopView.swift
//  MySpar
//
//  Created by Марина Рябчун on 17.08.2023.
//

import SwiftUI

struct ProductTopView: View {
    
    let imageName: String
    let tag: String?
    let discount: Int?
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 120)
            if let tag = tag {
                Text(tag)
                    .font(.system(size: 10))
                    .padding(.vertical, 3)
                    .padding(.leading, 25)
                    .padding(.trailing, 7)
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 7)
                            .foregroundColor(Constants.Colors.accent2)
                            .opacity(0.8)
                    )
                    .offset(x: -5, y: 0)
            }
            if let discount = discount {
                Text("\(discount)%")
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(Constants.Colors.accent2)
                    .offset(x: 90, y: 100)
            }
        }
    }
}

struct ProductTopView_Previews: PreviewProvider {
    static var previews: some View {
        ProductTopView(imageName: "sweet1", tag: "удар по ценам", discount: 10)
    }
}
