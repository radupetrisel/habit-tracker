//
//  ContentView.swift
//  HabitTracker
//
//  Created by Radu Petrisel on 13.07.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var activities = Activities()
    
    @State private var isShowingAddSheet = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(activities.all) { activity in
                    NavigationLink {
                        ActivityDetailView(activity: activity)
                    } label: {
                        Text(activity.name)
                    }
                }
            }
            .navigationTitle("Habit Tracker")
            .toolbar {
                Button {
                    isShowingAddSheet = true
                } label:{
                    Image(systemName: "plus")
                }
            }
        }
        .sheet(isPresented: $isShowingAddSheet) {
            AddHabit(activities: activities)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
