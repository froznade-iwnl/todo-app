//
//  ContentView.swift
//  ToDos
//
//  Created by CTSS Students on 25/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var todos = [
        Todo(title: "Watch things", isDone: true),
        Todo(title: "Eat lunch"),
        Todo(title: "Sleep")
    ]
    
    var body: some View {
        
        NavigationView{
                
                List(todos) { todo in
                    HStack {
                        Image(systemName: todo.isDone ? "checkmark.circle.fill" : "circle")
                    
                        Text("\(todo.title)")
                    }
                }
                .navigationTitle("Lyfe")
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
