//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    
    
    var body: some View {
        VStack {
            HStack{
                Text("To-Do List")
                    .font(.system(size:40))
                    .fontWeight(.black)
                Spacer()//push L/R
                Button {
                    withAnimation{
                        showNewTask = true
                    }//end of animation
                }label:{
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }//end of button
            }//end of HStack
            .padding()
            List{
                ForEach(toDos){ toDoItem in
                    if toDoItem.isImportant{
                        Text("‼️" + toDoItem.title)
                    }else{
                        Text(toDoItem.title)
                    }
                }
            }//end of list
            .listStyle(.plain)
        }//end of VStack
        Spacer()//push up
        if showNewTask {
            NewToDo(toDoItem: ToDoItem(title: "", isImportant: false))
        }//end of if-statement
    }
}

#Preview {
    ContentView()
        .modelContainer(for: ToDoItem.self, inMemory:true)
}
