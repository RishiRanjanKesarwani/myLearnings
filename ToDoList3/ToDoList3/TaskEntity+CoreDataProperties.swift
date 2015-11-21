//
//  TaskEntity+CoreDataProperties.swift
//  ToDoList3
//
//  Created by Rishi Ranjan Kesarwani on 26/10/15.
//  Copyright © 2015 Rishi Ranjan Kesarwani. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension TaskEntity {

    @NSManaged var task: String?
    @NSManaged var date: String?
    @NSManaged var time: String?

}
