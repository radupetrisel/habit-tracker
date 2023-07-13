//
//  Activities.swift
//  HabitTracker
//
//  Created by Radu Petrisel on 13.07.2023.
//

import SwiftUI

class Activities: ObservableObject {
    @Published var all = [Activity]()
    
    subscript(index: Int) -> Activity {
        get {
            all[index]
        }
        set {
            all[index] = newValue
        }
    }
}
