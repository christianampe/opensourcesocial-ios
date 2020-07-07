//
//  WorkoutListRowView.swift
//  Social
//
//  Created by Erik Miller on 7/5/20.
//

import SwiftUI
import Combine

struct WorkoutListRowView: View {
    
    //MARK: Turning on the observed object on causes errors in preview
    //MARK: How do you access a variable in a nested struct? (i.e. workoutTrackerVM.workoutTracker.workouts.workoutTitle)
    @ObservedObject var workoutRowVM: WorkoutListRowViewModel
    
    var body: some View {
        
            NavigationLink(destination: WorkoutDetailView()) {
                VStack (alignment: .leading) {
                    Text(workoutRowVM.workoutTracker.workouts[0].workoutTitle)
                    Text(workoutRowVM.workoutTracker.workouts[0].workoutType)
                    .font(.caption)
            }.padding(.vertical, 10)
        }
    }
}


