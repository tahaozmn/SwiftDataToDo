//
//  ToDoSwiftDataApp.swift
//  ToDoSwiftData
//
//  Created by Taha Özmen on 15.12.2023.
//

import SwiftUI

@main
struct ToDoSwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListScreen()
            }
        }.modelContainer(for: [ToDo.self])
    }
}
