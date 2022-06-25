//
//  Todo.swift
//  ToDos
//
//  Created by CTSS Students on 25/6/22.
//

import Foundation

struct Todo: Identifiable {
    
    let id = UUID()
    
    var title: String
    var isDone : Bool = false
    
}
