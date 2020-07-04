//
//  WorkoutListView.swift
//  Social
//
//  Created by Erik Miller on 7/4/20.
//

import SwiftUI

struct WorkoutListView: View {
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(0..<10) { _ in
                        WorkoutListRow()
                    }
                }
            }.navigationBarTitle("Workouts").navigationBarItems(trailing:
                Button("Add Workout") {
                    // MARK: Add Action to show modal for workout sheet
            })
        }
    }
    // MARK: Function to allow deleting of elements from the list once data is loaded in the list array
//    func delete(at offsets: IndexSet) {
//        item.remove(atOffsets: offsets)
//        }
}

struct WorkoutListRow: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Workout Title")
            Text("April 20, 2020")
                .font(.caption)
        }.padding(.vertical, 10)
    }
}

struct WorkoutListView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutListView()
    }
}
