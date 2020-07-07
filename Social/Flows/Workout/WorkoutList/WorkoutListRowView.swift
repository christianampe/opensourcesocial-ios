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
    //@ObservedObject var workoutRowVM: WorkoutListRowViewModel
    
    var body: some View {
        VStack (alignment: .leading){
            NavigationLink(destination: WorkoutDetailView(workout: workoutRowVM.workout)){
                Text("Workout 1")
                Text("April 20, 2020")
                    .font(.caption)
            }.padding(.vertical, 10)
        }
    }
}

struct WorkoutListRowView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutListRowView()
    }
}
