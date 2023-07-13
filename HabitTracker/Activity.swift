//
//  Activity.swift
//  HabitTracker
//
//  Created by Radu Petrisel on 13.07.2023.
//

import Foundation

struct Activity: Identifiable, Codable {
    let id = UUID()
    let name: String
    let description: String
    
    var completionCount = 0
    
    enum CodingKeys: CodingKey {
        case name
        case description
        case completionCount
    }
}
