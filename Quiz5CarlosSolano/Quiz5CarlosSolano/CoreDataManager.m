//
//  CoreDataManager.m
//  Quiz5CarlosSolano
//
//  Created by Estudiantes on 18/3/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import "CoreDataManager.h"
#import <MagicalRecord/MagicalRecord.h>
#import "CDItems.h"
@implementation CoreDataManager

+(void) saveContext {
    [[NSManagedObjectContext MR_defaultContext]MR_saveToPersistentStoreWithCompletion:^(BOOL contextDidSave, NSError * error) {
        if (contextDidSave) {
            NSLog(@"You successfully saved your context.");
        }
        else if (error){
            NSLog(@"Error saving context: %@",error.description);
        }
    }];
}

+(NSArray *)getAllItems{
    NSArray * items = [CDItems MR_findAll];
        return items;
}

+(void)insertItemsWithName:(NSString*) name quantity:(NSString *) quantity {
    CDItems *item = [CDItems MR_createEntity];
    item.productName = name;
    item.productQuantity = quantity;
    item.creationDate = [NSDate date];
    [CoreDataManager saveContext];
}

@end
