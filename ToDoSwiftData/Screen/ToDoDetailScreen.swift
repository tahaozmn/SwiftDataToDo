//
//  ToDoDetailScreen.swift
//  ToDoSwiftData
//
//  Created by Taha Özmen on 15.12.2023.
//

import SwiftUI

struct ToDoDetailScreen: View {
    
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    
    @State private var name : String = ""
    @State private var priority : Int?
    
    let toDo : ToDo
    
    var body: some View {
        
        Form {
            TextField("Name",text: $name)
            TextField("Priority", value: $priority, format: .number)
            Button("Update") {
                
                guard let priority = priority else {return}
                
                toDo.name = name
                toDo.prioriy = priority
                
                do {
                    try context.save()
                } catch {
                    print(error.localizedDescription)
                }
                dismiss()
            }
        }.onAppear(perform: {
            name = toDo.name
            priority = toDo.prioriy
        })
        
    }
}


