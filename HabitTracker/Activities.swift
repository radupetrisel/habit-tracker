//
//  Activities.swift
//  HabitTracker
//
//  Created by Radu Petrisel on 13.07.2023.
//

import SwiftUI

class Activities: ObservableObject {
    private static let allKey = "all"
    
    @Published var all: [Activity] = [] {
        didSet {
            save()
        }
    }
    
    subscript(index: Int) -> Activity {
        get {
            all[index]
        }
        set {
            all[index] = newValue
        }
    }
    
    init() {
        self.all = load() ?? []
    }
    
    private func save() {
        if let data = try? JSONEncoder().encode(all) {
            UserDefaults.standard.set(data, forKey: Self.allKey)
        }
    }
    
    private func load() -> [Activity]? {
        guard let data = UserDefaults.standard.data(forKey: Self.allKey) else { return nil }
        
        return try? JSONDecoder().decode([Activity].self, from: data)
    }
}
