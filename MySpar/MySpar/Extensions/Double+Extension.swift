//
//  Double+Extension.swift
//  MySpar
//
//  Created by Марина Рябчун on 17.08.2023.
//

import Foundation

extension Double {
    func roundedToTwoDecimalPlacesString() -> String {
        return String(format: "%.2f", self)
    }
}
