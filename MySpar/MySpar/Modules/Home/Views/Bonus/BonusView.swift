//
//  BonusView.swift
//  MySpar
//
//  Created by Марина Рябчун on 16.08.2023.
//

import SwiftUI

struct BonusView: View {
    
    let bonus = Bonus.mockBonus()
    let imageSize: CGFloat = 80
    
    var body: some View {
        ZStack {
            Image("backgroundBonus")
                            .resizable()
                            .cornerRadius(15)
                            .frame(height: 130)
            HStack(alignment: .bottom) {
                Text(String(bonus.countOfBonuses ?? 0))
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.black)
                    .padding(.horizontal, 5)
                Text("бонусов")
                    .lineLimit(2)
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(.black)
                    .offset(y: -5)
            }
            .offset(x: -100, y: -30)
            ZStack(alignment: .center) {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: imageSize + 20, height: imageSize + 20)
                    .foregroundColor(.white)
                Image("qrBonus")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: imageSize, height: imageSize, alignment: .center)
            }
            .offset(x: 110)
        }
        .padding(.horizontal, 16)
    }
}

struct BonusView_Previews: PreviewProvider {
    static var previews: some View {
        BonusView()
    }
}
