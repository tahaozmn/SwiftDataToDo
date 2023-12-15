//
//  ListView.swift
//  ToDoSwiftData
//
//  Created by Taha Özmen on 15.12.2023.
//

import SwiftUI
import SwiftData

struct ListScreen: View {
    
    @Query(sort: \ToDo.name, order: .forward) private var toDos : [ToDo]
    @State private var isAddToDoPresented : Bool = false
    
    var body: some View {
        
            ToDoListView(toDos: toDos)
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add To Do") {
                        isAddToDoPresented = true
                    }
                }
            }).sheet(isPresented: $isAddToDoPresented, content: {
                NavigationStack {
                    AddToDoScreen()
                }
            })
    }
}

#Preview {
    NavigationStack {
        ListScreen().modelContainer(for: [ToDo.self])

    }
}
