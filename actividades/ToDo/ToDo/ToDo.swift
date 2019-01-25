//
//  ToDo.swift
//  ToDo
//
//  Created by Fernando De La Rosa on 06/09/18.
//  Copyright © 2018 Fernando De La Rosa. All rights reserved.
//

import Foundation

struct ToDo: Codable {
    var title: String
    var isComplete: Bool
    var dueDate: Date
    var notes: String?
    
    static func loadTodos() -> [ToDo]?{
        guard let codedToDos = try? Data(contentsOf: ArchiveURL) else { return nil }
        
        let propertyListDecoder = PropertyListDecoder()
        return try? propertyListDecoder.decode(Array<ToDo>.self, from: codedToDos)
    }
    static func loadSampleToDos() -> [ToDo] {
        let todo1 = ToDo(title: "Examen BDD", isComplete: false, dueDate: Date(), notes: "Notes 1")
        let todo2 = ToDo(title: "Practica BDD", isComplete: true, dueDate: Date(), notes: "Notes 2")
        let todo3 = ToDo(title: "Examen MD", isComplete: false,dueDate: Date(), notes: "Notes 3")
        return [todo1, todo2, todo3]
    }
    
    //MARK: Date format
    static let dueDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
    
    //MARK: Archiving
    static let DocumentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("todos").appendingPathExtension("plist")
    
    static func saveToDos(_ todos: [ToDo]) {
        let propertyListEncoder = PropertyListEncoder()
        let codedToDos = try? propertyListEncoder.encode(todos)
        try? codedToDos?.write(to: ArchiveURL, options: .noFileProtection)
    }
}
