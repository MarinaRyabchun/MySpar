//
//  PromotionsModel.swift
//  MySpar
//
//  Created by Марина Рябчун on 16.08.2023.
//

import Foundation
import SwiftUI

struct Promotions {
    let promotions: [Promotion]
    
    static func mockPromotions() -> Promotions {
        return Promotions(promotions: [
            Promotion(imageName: "promotions2", name: "Абонемент на кофе", color: Constants.Colors.promotions1 ?? .red),
            Promotion(imageName: "promotions2", name: "Мои \nскидки", color: Constants.Colors.promotions2 ?? .red),
            Promotion(imageName: "promotions2", name: "Карта в подарок", color: Constants.Colors.promotions3 ?? .red),
            Promotion(imageName: "promotions2", name: "Доставка за 1 час", color: Constants.Colors.promotions4 ?? .red)
        ])
    }
}

struct Promotion: Identifiable {
    let id = UUID()
    let imageName: String
    let name: String
    let color: Color
    
    init(imageName: String, name: String, color: Color ) {
        self.imageName = imageName
        self.name = name
        self.color = color
    }
    
    static func mockPromotion() -> Promotion {
        Promotion(imageName: "promotions2", name: "Абонемент на кофе", color: Constants.Colors.promotions1 ?? .red)
    }
}
