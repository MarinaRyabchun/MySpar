//
//  DiscountsModel.swift
//  MySpar
//
//  Created by Марина Рябчун on 16.08.2023.
//

import Foundation

struct Discounts {
    let discounts: [Discount]
    
    static func mockDiscounts() -> Discounts {
        return Discounts(discounts: [
            Discount(imageName: "discount1", tag: "", descriptionTag: ""),
            Discount(imageName: "discount2", tag: "", descriptionTag: ""),
            Discount(imageName: "discount3", tag: "", descriptionTag: ""),
            Discount(imageName: "discount4", tag: "", descriptionTag: nil)
        ])
    }
}

struct Discount: Identifiable {
    let id = UUID()
    let imageName: String
    let tag: String?
    let descriptionTag: String?
    
    
    init(imageName: String, tag: String?, descriptionTag: String?) {
        self.imageName = imageName
        self.tag = tag
        self.descriptionTag = descriptionTag
    }
    
    static func mockDiscount() -> Discount {
        Discount(imageName: "discount1", tag: "", descriptionTag: "")
    }
}
