//
//  ContentView.swift
//  todo
//
//  Created by scholar on 8/11/23.
//

import SwiftUI

struct goals: View {
    @State var toDoItems: [ToDoItem] = []
    @State private var showtask = false
    var body: some View {
        VStack {
                Button(action: {
                    self.showtask = true
                }) {
                    Image("notepad")
                                                    .resizable()
                                                    .padding(.leading)
                                                    .frame(width: 75.0, height: 60.0)
            }
            HStack {
                                    // HStack for plant name, plant, and level
                                    //var plantName = ""
                                    Text("Bernie Leaf")
                                    //figure out user input
                                        .font(.title2)
                                        .fontWeight(.light)
                                        .padding()
                                    
                                    Image("plantLevel1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100.0, height: 100.0)
                                    
                                    //if Button pressed == TRUE {
                                    //   score += 5
                                    //  if score == 25 {
                                    //   plantLevel += 1
                                    //     Text(plantLevel)
                                    Text ("Level 1")
                                        .font(.title2)
                                        .fontWeight(.light)
                                        .padding()
                                        .frame(width: 100)
                                    
                                }
            .padding(.all)
        }
        List {
            ForEach(toDoItems) {toDoItem in
                if toDoItem.isImportant == true {
                    Text("🚨🚨 " + toDoItem.title)
                }
                else {
                    Text(toDoItem.title)
                }
            }
        }

        if showtask {
            NewToDo(showtask: $showtask, title: "", isImportant: false, toDoItems: $toDoItems
            )
            .transition(AnyTransition.opacity.animation(.easeInOut(duration: 0.5)))
        }
        HStack(spacing: 30) {
            NavigationLink(destination: home())
            {
                VStack {
                  Image("home1")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 45.0, height: 45.0)
                    Text("Home")
                        .foregroundColor(Color.black)
                }
            }
            VStack {
              Image("goals1")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 50.0, height: 45.0)
              Text("Quiz")
            }
            NavigationLink(destination: ContentView()) {
              VStack {
                Image("rec1")
                  .resizable(resizingMode: .stretch)
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 50.0, height: 50.0)
                Text("Recs")
                      .foregroundColor(Color.black)
              }
            }
            NavigationLink(destination: goals()) {
              VStack {
                Image("todo1")
                  .resizable(resizingMode: .stretch)
                  .aspectRatio(contentMode: .fit)
                  .frame(width: 50.0, height: 40.0)
                Text("Goals")
                      .foregroundColor(Color.black)
              }
            }
                  }
    }
}

struct goals_Previews: PreviewProvider {
    static var previews: some View {
        goals()
    }
}
