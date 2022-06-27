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
    @State var isAddPresented = false
    var body: some View {
        
        NavigationView{
                
            List {
                ForEach($todos) { $todo in
                        NavigationLink {
                            TodoDetailView(todo: $todo)
                        } label: {
                            HStack {
                                Image(systemName: todo.isDone ? "checkmark.circle.fill" : "circle")
                                    .foregroundColor(setColor(myColor: todo.Priority))
                            
                                Text("\(todo.title)")
                                    .foregroundColor(setColor(myColor: todo.Priority))
                                    .strikethrough(todo.isDone)
                                
                                Spacer()
                                
                                Text("\(todo.Priority == .veryImportant ? "!!" : todo.Priority == .important ? "!":"")")
                                    .foregroundColor(setColor(myColor: todo.Priority))
                                
                            }
                        }
                    }
                .onDelete { indexSet in
                    todos.remove(atOffsets: indexSet)
                }
                .onMove { indices, newOffset in
                    todos.move(fromOffsets: indices, toOffset: newOffset)
                }
            }
            .navigationTitle("Lyfe")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        isAddPresented = true
                    }label:{
                        Image(systemName: "plus")
                    }
                }
            }
            
        }
        .sheet(isPresented: $isAddPresented) {
            AddTodoList(todos: $todos)
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
