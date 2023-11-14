//
//  ToDo.swift
//  toDoList
//
//  Created by Paul Stewart on 11/14/23.
//

import Foundation

struct ToDo: Equatable {
    let id = UUID()
    let title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    static func ==(lhs: ToDo, rhs: ToDo) -> Bool {
        return lhs.id == rhs.id
    }
    
    static func loadToDos() -> [ToDo]? {
        return nil
    }
    static func loadSampleToDos() -> [ToDo] {
        let todo1 = ToDo(title: "Todo one", isComplete: false, dueDate: Date(), notes: "notes one")
        let todo2 = ToDo(title: "Todo two", isComplete: false, dueDate: Date(), notes: "notes two")
        let todo3 = ToDo(title: "Todo three", isComplete: false, dueDate: Date(), notes: "notes three")
        
        return [todo1, todo2, todo3]
    }
    
    static let dueDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
}
