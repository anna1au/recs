//
//  todoview.swift
//  todo
//
//  Created by scholar on 8/11/23.
//

import SwiftUI

struct NewToDo: View {
    @Binding var showtask: Bool
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoItems: [ToDoItem]
    var body: some View {
        VStack {
            Text("Task title:")
                .fontWeight(.semibold)
            TextField("Enter the task description...", text: $title)
                .multilineTextAlignment(.center)
                .border(Color.gray, width: 1)
                .padding()
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
            }
            Button("Add") {
                self.addTask(title: self.title, isImportant: self.isImportant)
                self.showtask = false
            }
        }
        .padding()
    }
    private func addTask(title: String, isImportant: Bool = false) {
        let task = ToDoItem(title:title, isImportant: isImportant)
        toDoItems.append(task)
    }
}

struct NewToDo_Previews: PreviewProvider {
    static var previews: some View {
        NewToDo(showtask: .constant(true), title: "", isImportant: false, toDoItems: .constant([]))
    }
}
