//
//  CoreDataStack.swift
//  CoreDataHelloWorld
//
//  Created by Diego Freniche Brito on 13/09/2017.
//  Copyright © 2017 Diego Freniche Brito. All rights reserved.
//

import CoreData

// MARK: - Core Data stack
class CoreDataStack {
    
    lazy var persistentContainer: NSPersistentContainer = createContainer()
        
    func createContainer() -> NSPersistentContainer {
        let container = NSPersistentContainer(name: "CoreDataHelloWorld")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}
