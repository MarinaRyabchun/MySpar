//
//  RecommendModel.swift
//  MySpar
//
//  Created by Марина Рябчун on 16.08.2023.
//

import Foundation

struct ProductСategory: Identifiable {
    let id = UUID()
    let name: String
    let products: [Product]
}

struct Product: Identifiable  {
    let id = UUID()
    let imageName: String
    let oldPrice: Double
    let unit: String
    let count: Double
    let tag: String?
    let discount: Int?
    
    var price: Double {
        self.oldPrice - self.oldPrice/100 * Double((self.discount ?? 0))
    }
    
    init(imageName: String, oldPrice: Double, unit: String, count: Double, tag: String?, discount: Int?) {
        self.imageName = imageName
        self.oldPrice = oldPrice
        self.unit = unit
        self.count = count
        self.tag = tag
        self.discount = discount
    }
    
    static func mockRecommendProduct() -> Product {
        Product(imageName: "recommended2", oldPrice: 200.00, unit: "шт", count: 1.0, tag: "Супер цена", discount: 10)
    }
}

struct DataProducts {
    let products = [
        ProductСategory(name: "Рекомендуем", products: [
            Product(imageName: "recommended1", oldPrice: 200.00, unit: "шт", count: 1, tag: "Супер цена", discount: 10),
            Product(imageName: "recommended2", oldPrice: 19.99, unit: "шт", count: 1, tag: nil, discount: nil),
            Product(imageName: "recommended3", oldPrice: 600.00, unit: "г", count: 100, tag: "Удар по ценам", discount: 50),
            Product(imageName: "recommended4", oldPrice: 50.00, unit: "г", count: 100, tag: nil, discount: nil),
            Product(imageName: "recommended5", oldPrice: 199.99, unit: "г", count: 100, tag: nil, discount: nil)
        ]),
        ProductСategory(name: "Сладкое настроение", products: [
            Product(imageName: "sweet1", oldPrice: 200.00, unit: "шт", count: 1, tag: nil, discount: 10),
            Product(imageName: "sweet2", oldPrice: 19.99, unit: "шт", count: 1, tag: "Новинка", discount: nil),
            Product(imageName: "sweet3", oldPrice: 50, unit: "г", count: 100, tag: "Новинка", discount: nil),
            Product(imageName: "sweet4", oldPrice: 6000.00, unit: "г", count: 100, tag: nil, discount: 50),
            Product(imageName: "sweet5", oldPrice: 199.99, unit: "г", count: 100, tag: nil, discount: nil)
        ])
    ]
}
