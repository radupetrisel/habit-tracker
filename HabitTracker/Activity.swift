//
//  Activity.swift
//  HabitTracker
//
//  Created by Radu Petrisel on 13.07.2023.
//

import Foundation

struct Activity: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    
    var completionCount = 0
}
