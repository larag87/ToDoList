//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showNewTask = false
    
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
                    showNewTask = true
                }label:{
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }//end of button
                
            }//end of HStack
            .padding()
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
