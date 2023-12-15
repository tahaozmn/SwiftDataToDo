//
//  ToDo.swift
//  ToDoSwiftData
//
//  Created by Taha Özmen on 15.12.2023.
//

import Foundation
import SwiftData

@Model
final class ToDo {
    var name : String
    var prioriy : Int
    
    init(name: String, prioriy: Int) {
        self.name = name
        self.prioriy = prioriy
    }
}

