//
//  TodoDetailView.swift
//  ToDos
//
//  Created by CTSS Students on 25/6/22.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo : Todo
    
    var body: some View {
        
        VStack {
            TextField("Todo title", text: $todo.title)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
                .padding()
            
            Button {
                todo.isDone.toggle()
            }label:{
                Text("Mark as \(todo.isDone ? "incomplete" : "completed")")
            }
                
        }
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todo: .constant(Todo(title: "water the catto")))
    }
}
