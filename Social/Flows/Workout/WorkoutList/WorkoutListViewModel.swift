//
//  WorkoutListViewModel.swift
//  Social
//
//  Created by Erik Miller on 7/4/20.
//

import Foundation

class WorkoutListViewModel: ObservableObject {
    
    @Published var workoutListRowViewModels = [WorkoutListRowViewModel]()
    
    init() {
        self.workoutListRowViewModels = testDataWorkouts.map { workout in
            WorkoutListRowViewModel(workoutTracker: workout)
        }
    }

}
