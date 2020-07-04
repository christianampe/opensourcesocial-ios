//
//  WorkoutTracker.swift
//  Social
//
//  Created by Erik Miller on 7/4/20.
//

import Foundation
import Combine

struct WorkoutTracker {
    
    var workouts: [Workout]
    
    struct Workout {
        
        var workoutTitle: String
        
        // MARK: Should this be an enum to switch between these two values? These fields are dependent on either 1. Time Priority or 2. Work Priority
        var workoutType: String // This seems unnecessary if using a bool/enum
        var workoutDuration: Int? // optional for case when workout is Work Priority
        var workoutRounds: Int? // optional for case when workout is Time Priority
        
        
        var workoutMovements: [Movement]
        
        struct Movement {
            var workoutMovement: String? // Can create a new file with all crossfit movements to use a picker
            var workoutMovementReps: Int?
            var workoutMovementWeight: Int? //optional for case of movements with no weight
        }
        
        //MARK: Should this be a separate struct, or nested like this? It should be possible to have a workout with zero results in the array of workoutResults
        var workoutResults: [Result]? // optional for workouts with no results
        
        struct Result {
            var resultTitle: String
            var resultWorkoutDuration: Int? // optional for case when workout is Work Priority
            var resultWorkoutReps: Int? // optional for case when workout is Time Priority
            var resultRating: Bool
            var resultNotes: String
        }
    }
}

#if DEBUG

let testDataWorkouts = [
    
    // With 0 results
    WorkoutTracker(workouts: [WorkoutTracker.Workout(workoutTitle: "Workout 1", workoutType: "Work Priority", workoutDuration: 10, workoutRounds: 0, workoutMovements: [WorkoutTracker.Workout.Movement(workoutMovement: "Pull-up", workoutMovementReps: 20, workoutMovementWeight: 0)])]),
    WorkoutTracker(workouts: [WorkoutTracker.Workout(workoutTitle: "Workout 2", workoutType: "Work Priority", workoutDuration: 10, workoutRounds: 0, workoutMovements: [WorkoutTracker.Workout.Movement(workoutMovement: "Pull-up", workoutMovementReps: 20, workoutMovementWeight: 0)])]),
    
    // With 1 result
    WorkoutTracker(workouts: [WorkoutTracker.Workout(workoutTitle: "Workout 3", workoutType: "Work Priority", workoutDuration: 10, workoutRounds: 0, workoutMovements: [WorkoutTracker.Workout.Movement(workoutMovement: "Pull-up", workoutMovementReps: 20, workoutMovementWeight: 0)], workoutResults: [WorkoutTracker.Workout.Result(resultTitle: "Murph 2020", resultWorkoutDuration: 45, resultWorkoutReps: 0, resultRating: true, resultNotes: "This is a brutal workout")])])
]

#endif


