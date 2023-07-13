//
//  ActivityDetailView.swift
//  HabitTracker
//
//  Created by Radu Petrisel on 13.07.2023.
//

import SwiftUI

struct ActivityDetailView: View {
    @ObservedObject private var activities: Activities
    private var activityIndex: Int
    
    private var activity: Activity {
        activities[activityIndex]
    }
    
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                Text(activity.name)
                    .font(.largeTitle)
                Spacer()
            }
            
            HStack {
                Text(activity.description)
                Spacer()
            }
            
            HStack {
                Text("Times completed: \(activity.completionCount)")
                Spacer()
                Button {
                    activities[activityIndex].completionCount += 1
                } label: {
                    Image(systemName: "plus")
                }
            }
            
            Spacer()
        }
        .padding()
    }
    
    init(activities: Activities, activityIndex: Int) {
        self.activities = activities
        self.activityIndex = activityIndex
    }
}

struct ActivityDetailView_Previews: PreviewProvider {
    static var activities: Activities = {
        let value = Activities()
        value.all.append(Activity(name: "Test", description: "Test description"))
        return value
    }()
    
    static var previews: some View {
        ActivityDetailView(activities: activities, activityIndex: 0)
    }
}
