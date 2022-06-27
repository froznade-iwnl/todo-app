//
//  AddTodoList.swift
//  ToDos
//
//  Created by CTSS Students on 25/6/22.
//

import SwiftUI

struct AddTodoList: View {
    
    @State var todo = ""
    @Binding var todos: [Todo]
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            
            TextField("Add new to-do list", text: $todo)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .padding()
            
            Button("Save todo") {
                todos.append(Todo(title: todo))
                presentationMode.wrappedValue.dismiss()
            }
            
        }
        
    }
}

struct AddTodoList_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoList(todos: .constant([]))
    }
}
