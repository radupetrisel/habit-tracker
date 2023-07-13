//
//  ActivityDetailView.swift
//  HabitTracker
//
//  Created by Radu Petrisel on 13.07.2023.
//

import SwiftUI

struct ActivityDetailView: View {
    private var activity: Activity
    
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
            
            Spacer()
        }
        .padding()
    }
    
    init(activity: Activity) {
        self.activity = activity
    }
}

struct ActivityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDetailView(activity: Activity(name: "Test", description: "Test description"))
    }
}
