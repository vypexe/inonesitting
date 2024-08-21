//
//  Task.swift
//  inonesitting
//
//  Created by Allen Lin on 5/18/23.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
    
    
}
