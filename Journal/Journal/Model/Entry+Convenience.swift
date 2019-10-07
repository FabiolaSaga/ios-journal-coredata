//
//  Entry+Convenience.swift
//  Journal
//
//  Created by Fabiola S on 10/2/19.
//  Copyright © 2019 Fabiola Saga. All rights reserved.
//

import Foundation
import CoreData

enum MoodControl: String, CaseIterable {
    case 😞
    case 😐
    case 🙂
    
}

extension Entry {
    convenience init(mood: String = MoodControl.😐.rawValue, title: String, bodyText: String, timeStamp: Date = Date(), identifier: String = "", context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context: context)
        self.mood = mood
        self.title = title
        self.bodyText = bodyText
        self.timeStamp = timeStamp
        self.identifier = identifier
    }
}
