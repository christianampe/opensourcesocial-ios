//
//  WorkoutListRowViewModel.swift
//  Social
//
//  Created by Erik Miller on 7/5/20.
//

import Foundation

class WorkoutListRowViewModel: ObservableObject, Identifiable {
    
    var id: Int
    
    @Published var workoutTracker: WorkoutTracker
    
    init(workoutTracker: WorkoutTracker){
        self.workoutTracker = workoutTracker
        self.id = 0
    }
    
    
}
