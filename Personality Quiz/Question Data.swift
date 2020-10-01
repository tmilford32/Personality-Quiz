//
//  Question Data.swift
//  Personality Quiz
//
//  Created by MXC Swift on 10/1/20.
//  Copyright © 2020 MXC Swift. All rights reserved.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
    
}
enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: CityType
}

enum CityType: Character {
    case Chicago = "🌇", SanFrancisco = "🌉", Dubai = "🕌", Tokyo = "🌅"
    
    var definition: String {
        switch self {
        case .Chicago:
            return " You are from the best City in the World."
        case .SanFrancisco:
            return "You don't own a stick shift because of all of the hills in the city!"
        case .Dubai:
            return "You are very cultured and like sand!"
        case .Tokyo:
            return " You are one in a million, actually 9.2 million!"
        }
    }
}
