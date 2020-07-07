//
//  WorkoutListView.swift
//  Social
//
//  Created by Erik Miller on 7/4/20.
//

import SwiftUI

struct WorkoutListView: View {
    
    @ObservedObject var workoutListVM = WorkoutListViewModel()
    
    @State private var addWorkoutSheetPresented = false
        
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(workoutListVM.workoutListRowViewModels) { workoutListVM in
                        WorkoutListRowView(workoutRowVM: workoutListVM)
                    }
                }
             }.navigationBarTitle("Workouts").navigationBarItems(trailing:
                Button("Add Workout") {
                    self.addWorkoutSheetPresented.toggle()
            })
        }
        .sheet(isPresented: $addWorkoutSheetPresented) {
                    AddWorkoutView(workoutTitle: "", workoutDuration: "", workoutRounds: "", workoutMovement: [""], workoutMovementReps: "", workoutMovementWeight: "")
                }
    }
    // MARK: Add function to allow deleting of elements from the list once data is loaded in the list array

}



struct WorkoutListView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutListView()
    }
}
