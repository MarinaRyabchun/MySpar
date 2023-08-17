//
//  SwiftUIView.swift
//  MySpar
//
//  Created by Марина Рябчун on 17.08.2023.
//

import SwiftUI

struct UnitView: View {
    let count: Double
    let unit: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)
                .frame(width: 25, height: 15)
            
            Text("₽")
                .foregroundColor(.black)
                .font(.system(size: 9, weight: .bold))
                .offset(x: -10, y: -5)
            
            Text(count != 1 ? String(format: "%.0f", count) + unit : unit)
                .foregroundColor(.black)
                .font(.system(size: 9, weight: .bold))
                .offset(x: 5, y: 5)
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: 15))
                path.addLine(to: CGPoint(x: 15, y: 0))
            }
            .stroke(Color.black, lineWidth: 2)
        }
        .frame(width: 20, height: 10)
    }
}

struct UnitView_Previews: PreviewProvider {
    static var previews: some View {
        UnitView(count: 100.00, unit: "г")
    }
}
