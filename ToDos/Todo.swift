//
//  Todo.swift
//  ToDos
//
//  Created by CTSS Students on 25/6/22.
//

import Foundation

enum Priority {
    case veryImportant, important, notImportant
}

struct Todo: Identifiable {
    
    let id = UUID()
    
    var title: String
    var isDone : Bool = false
    var Priority: Priority
    var color = "black"

    
}
