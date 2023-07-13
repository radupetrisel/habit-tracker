//
//  AddHabit.swift
//  HabitTracker
//
//  Created by Radu Petrisel on 13.07.2023.
//

import SwiftUI

struct AddHabit: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject private var activities: Activities
    
    @State private var name = ""
    @State private var description = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Activity name", text: $name)
                TextField("Description", text: $description)
            }
            .onSubmit {
                addActivity()
            }
            .toolbar {
                Button("Done", action: addActivity)
            }
        }
    }
    
    init(activities: Activities) {
        self.activities = activities
    }
    
    private func addActivity() {
        let activity = Activity(name: name, description: description)
        activities.all.append(activity)
        dismiss()
    }
}

struct AddHabit_Previews: PreviewProvider {
    static var previews: some View {
        AddHabit(activities: Activities())
    }
}
