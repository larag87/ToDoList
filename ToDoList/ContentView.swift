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
                    Text(toDoItem.title)
                }
            }//end of list
            
        }//end of VStack
        Spacer()//push up
        if showNewTask {
            NewToDo()
        }//end of if-statement
    }
}

#Preview {
    ContentView()
}
