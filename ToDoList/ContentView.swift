//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Text("To-Do List")
                    .font(.system(size:40))
                    .fontWeight(.black)
                Spacer()//push L/R
                
                Button {
                }label:{
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }//end of button
                
            }//end of HStack
            .padding()
        }//end of VStack
        Spacer()//push up
    }
}

#Preview {
    ContentView()
}
