//
//  AddWorkoutView.swift
//  Social
//
//  Created by Erik Miller on 7/5/20.
//

import SwiftUI

struct AddWorkoutView: View {
    
    @State var workoutTitle: String
    
    @State var selectedWorkoutType = 0
    
    @State var workoutDuration: String
    @State var workoutRounds: String
    
    
    @State var workoutMovement: [String]
    @State var workoutMovementReps: String
    @State var workoutMovementWeight: String
    
    var movementOptions = ["Pull up", "Deadlift", "Power Clean", "Handstand Walk", "Swim"]
    
    
    
    var body: some View {
        NavigationView {
            VStack {
                
                Form {
                    Section{
                        Text("Workout Title")
                        TextField("Workout Title", text: $workoutTitle)
                        // MARK: Need to capture the date for organizing the WorkoutList
                        Text("\(Date())").font(.caption2).foregroundColor(.gray)
                    }
                    Section{
                        Picker(selection: $selectedWorkoutType, label: Text("Workout Type")){
                            Text("Time Priority").tag(0)
                            Text("Work Priority").tag(1)
                        }.pickerStyle(SegmentedPickerStyle())
                        
                        if selectedWorkoutType == 0 {
                            Text("Time")
                            TextField("Enter time (i.e. 9:30)", text: $workoutDuration)
                        }
                        else{
                            Text("Repetitions")
                            TextField("Enter total rounds (i.e. 10)", text: $workoutRounds).keyboardType(.numberPad)
                        }
                        Text("Movements, Weights & Reps")
                        List{
                            Picker(selection: $workoutMovement, label: Text("Select Movement")){
                                ForEach(0..<movementOptions.count){ _ in
                                    Text("\(self.movementOptions[0])")
                                }
                            }
                            HStack{
                                TextField("Weight in lbs", text: $workoutMovementWeight).keyboardType(.numberPad)
                                TextField("Reps or Distance", text: $workoutMovementReps).keyboardType(.numberPad)
                            }
                        }
                        Button("Add Movement", action: {
                            //MARK: Add button action to add another Movement Row to the form
                        })
                    }
                    Section{
                        Button(action: {
                            //MARK: Add button action to append the new workout to the workoutlist array
                        },
                        label: {
                            HStack{
                                Spacer()
                                Text("Add to Workouts")
                                Spacer()
                            }
                        })
                    }
                }
            }.navigationTitle("Add Workout")
        }
    }
}

struct AddWorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        AddWorkoutView(workoutTitle: "", workoutDuration: "", workoutRounds: "", workoutMovement: [""], workoutMovementReps: "", workoutMovementWeight: "")
    }
}
