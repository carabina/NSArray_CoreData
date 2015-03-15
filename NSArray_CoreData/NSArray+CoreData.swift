//
//  NSArray+CoreData.swift
//  NSArray_CoreData
//
//  Created by Nofel Mahmood on 08/03/2015.
//  Copyright (c) 2015 CocoaBite. All rights reserved.
//

import Foundation
import CoreData
import ObjectiveC

extension NSArray{
    
    @objc public class func arrayWithManagedObjects(entityName:String,context:NSManagedObjectContext,error:NSErrorPointer)->NSArray
    {
        var fetchRequest=NSFetchRequest(entityName: entityName)
        var results=context.executeFetchRequest(fetchRequest, error: error)!
        return results
    }
    
    @objc public class func arrayWithManagedObjects(entityName:String,predicate:NSPredicate,context:NSManagedObjectContext,error:NSErrorPointer)->NSArray
    {
        var fetchRequest=NSFetchRequest(entityName: entityName)
        fetchRequest.predicate=predicate
        return context.executeFetchRequest(fetchRequest, error: error)!
    }
    @objc public class func arrayWithManagedObjects(entityName:String,predicate:NSPredicate,range:NSRange,context:NSManagedObjectContext,error:NSErrorPointer)->NSArray
    {
        var fetchRequest=NSFetchRequest(entityName: entityName)
        fetchRequest.predicate=predicate
        fetchRequest.fetchOffset=range.location
        fetchRequest.fetchLimit=range.length
        return context.executeFetchRequest(fetchRequest, error: error)!
    }
    @objc public class func arrayWithManagedObjects(entityName:String,predicate:NSPredicate,range:NSRange,sortDictionary:NSDictionary,context:NSManagedObjectContext,error:NSErrorPointer)->NSArray
    {
        var fetchRequest=NSFetchRequest(entityName: entityName)
        fetchRequest.predicate=predicate
        fetchRequest.fetchOffset=range.location
        fetchRequest.fetchLimit=range.length
        return context.executeFetchRequest(fetchRequest, error: error)!
    }
    @objc public class func arrayWithManagedObjects(entityName:String,predicate:NSPredicate)
    {
        var fetchRequest=NSFetchRequest(entityName: entityName)
        fetchRequest.resultType=NSFetchRequestResultType.DictionaryResultType
    }
    @objc public class func arrayWithManagedObjectsByFindingMax(entityName:String,propertyKeyPath:String,resultMaxValueKey:String,resultType:NSAttributeType,context:NSManagedObjectContext,error:NSErrorPointer)->NSArray
    {
        var fetchRequest=NSFetchRequest(entityName: entityName)
        fetchRequest.resultType=NSFetchRequestResultType.DictionaryResultType
        var keyPathExpression=NSExpression(forKeyPath: propertyKeyPath)
        var maxExpression=NSExpression(forFunction: "max:", arguments: NSArray(object: keyPathExpression))
        var expressionDescription=NSExpressionDescription()
        expressionDescription.name=resultMaxValueKey
        expressionDescription.expression=maxExpression
        expressionDescription.expressionResultType=resultType
        fetchRequest.propertiesToFetch=NSArray(object: expressionDescription)
        
        return context.executeFetchRequest(fetchRequest, error: error)!
    }
    
    @objc public class func arrayWithManagedObjectsByFindingMax(entityName:String,predicate:NSPredicate,propertyKeyPath:String,resultMaxValueKey:String,resultType:NSAttributeType,context:NSManagedObjectContext,error:NSErrorPointer)->NSArray
    {
        var fetchRequest=NSFetchRequest(entityName: entityName)
        fetchRequest.resultType=NSFetchRequestResultType.DictionaryResultType
        fetchRequest.predicate=predicate
        var keyPathExpression=NSExpression(forKeyPath: propertyKeyPath)
        var maxExpression=NSExpression(forFunction: "max:", arguments: NSArray(object: keyPathExpression))
        var expressionDescription=NSExpressionDescription()
        expressionDescription.name=resultMaxValueKey
        expressionDescription.expression=maxExpression
        expressionDescription.expressionResultType=resultType
        fetchRequest.propertiesToFetch=NSArray(object: expressionDescription)
        
        return context.executeFetchRequest(fetchRequest, error: error)!
    }
    
    
}

