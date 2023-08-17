//
//  BonusModel.swift
//  MySpar
//
//  Created by Марина Рябчун on 16.08.2023.
//

import Foundation

struct Bonus: Codable {
    let countOfBonuses: Int?
    
    
    init(countOfBonuses: Int) {
        self.countOfBonuses = countOfBonuses
    }
    
    static func mockBonus() -> Bonus {
        return Bonus(countOfBonuses: 30)
    }
}
