//
//  NSArray+CoreData.swift
//  NSArray_CoreData
//
//  Created by Nofel Mahmood on 08/03/2015.
//  Copyright (c) 2015 CocoaBite. All rights reserved.
//

import Foundation
import CoreData

extension NSArray {
    
    class func arrayWithManagedObjects(entityName:String,context:NSManagedObjectContext)->NSArray
    {
        var error:NSError?
        var fetchRequest=NSFetchRequest(entityName: entityName)
        return context.executeFetchRequest(fetchRequest, error: &error)!
    }
    
    class func arrayWithManagedObjects(entityName:String,predicate:NSPredicate,context:NSManagedObjectContext)->NSArray
    {
        var error:NSError?
        var fetchRequest=NSFetchRequest(entityName: entityName)
        fetchRequest.predicate=predicate
        return context.executeFetchRequest(fetchRequest, error: &error)!
    }
    class func arrayWithManagedObjects(entityName:String,predicate:NSPredicate,range:NSRange,context:NSManagedObjectContext)->NSArray
    {
        var error:NSError?
        var fetchRequest=NSFetchRequest(entityName: entityName)
        fetchRequest.predicate=predicate
        fetchRequest.fetchOffset=range.location
        fetchRequest.fetchLimit=range.length
        return context.executeFetchRequest(fetchRequest, error: &error)!
    }
    class func arrayWithManagedObjects(entityName:String,predicate:NSPredicate,range:NSRange,sortDescriptors:NSArray,context:NSManagedObjectContext)->NSArray
    {
        var error:NSError?
        var fetchRequest=NSFetchRequest(entityName: entityName)
        fetchRequest.predicate=predicate
        fetchRequest.fetchOffset=range.location
        fetchRequest.fetchLimit=range.length
        fetchRequest.sortDescriptors=sortDescriptors
        return context.executeFetchRequest(fetchRequest, error: &error)!
    }
}

