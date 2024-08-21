//
//  TaskModel.swift
//  inonesitting
//
//  Created by Abe on 6/3/23.
//

import Foundation

struct TaskModel: Codable, Identifiable {
    
    let id: String
    
    let title: String
    
    let details: String
    
    let taskDate: Date
    
    let length: Int
    
}
