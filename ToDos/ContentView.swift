//
//  ContentView.swift
//  ToDos
//
//  Created by CTSS Students on 25/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var todos = [
        Todo(title: "Watch things", isDone: true, Priority: .important),
        Todo(title: "Eat lunch", Priority: .veryImportant),
        Todo(title: "Sleep", Priority: .notImportant)
    ]
    
    var body: some View {
        
        NavigationView{
                
                List(todos) { todo in
                    HStack {
                        Image(systemName: todo.isDone ? "checkmark.circle.fill" : "circle")
                    
                        Text("\(todo.title)\(todo.Priority == .veryImportant ? "!!" : todo.Priority == .important ? "!":"")")
                            .foregroundColor(setColor(myColor: todo.Priority))
                            .strikethrough(todo.isDone)
                            
                    }
                }
                .navigationTitle("Lyfe")
            
        }
        
    }
    
    func setColor(myColor: Priority) -> Color{
        if(myColor == .important){
            return .orange
        } else if myColor == .veryImportant{
            return .red
        }else{
            return .black
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
