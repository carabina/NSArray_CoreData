# NSArray_CoreData
Extension of NSArray for CoreData in Swift

## Why ?

Well, I feel NSArray does so much awesome stuff that just lacking the ability of nice integration with CoreData is something it feels deprived of.

I am currently working on a project in which I am developing and using it at the same time. I have implemented methods supporting fetching records from the CoreData database which I think are the most important ones.

## Methods implemented for now

    NSArray.arrayWithManagedObjects(entityName:String,context:NSManagedObjectContext,error:NSErrorPointer)
________________________________________________________________________________

    NSArray.arrayWithManagedObjects(entityName:String,predicate:NSPredicate,context:NSManagedObjectContext,error:NSErrorPointer)   

________________________________________________________________________________

    NSArray.arrayWithManagedObjects(entityName:String,predicate:NSPredicate,range:NSRange,context:NSManagedObjectContext,error:NSErrorPointer)

________________________________________________________________________________

    NSArray.arrayWithManagedObjects(entityName:String,predicate:NSPredicate,range:NSRange,sortDictionary:NSDictionary,context:NSManagedObjectContext,error:NSErrorPointer)

________________________________________________________________________________
                  
                  NSArray.arrayWithManagedObjects(entityName:String,predicate:NSPredicate)

________________________________________________________________________________

    NSArray.arrayWithManagedObjectsByFindingMax(entityName:String,propertyKeyPath:String,resultMaxValueKey:String,resultType:NSAttributeType,context:NSManagedObjectContext,error:NSErrorPointer)

________________________________________________________________________________
    NSArray.arrayWithManagedObjectsByFindingMax(entityName:String,predicate:NSPredicate,propertyKeyPath:String,resultMaxValueKey:String,resultType:NSAttributeType,context:NSManagedObjectContext,error:NSErrorPointer)
________________________________________________________________________________

