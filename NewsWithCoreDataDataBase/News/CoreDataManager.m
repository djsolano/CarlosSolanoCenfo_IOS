//
//  CoreDataManager.m
//  News
//
//  Created by Estudiantes on 11/3/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import "CoreDataManager.h"
#import <MagicalRecord/MagicalRecord.h>
#import "CDNews.h"
#import "CDCategory.h"

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

+(NSArray *)getAllCategories{
    NSArray * categories = [CDCategory MR_findAllSortedBy:@"order"
                                                ascending:YES];//[CDCategory MR_findAll];
    if(categories.count > 0){
        return categories;
    }
    return [CoreDataManager insertCategories];
}

+(NSArray*) insertCategories{
    [CDCategory insertCategoryWithName:@"Sucesos" imageName:@"incident" order:2];
    [CDCategory insertCategoryWithName:@"Deportes" imageName:@"sports" order:1];
    [CDCategory insertCategoryWithName:@"Tecnología" imageName:@"technology" order:4];
    [CDCategory insertCategoryWithName:@"Economía" imageName:@"economy" order:3];
    [CoreDataManager saveContext];//Sin esto.El contexto no se guarda en disco solo en memoria, asi que si vuelvo a ejecutar, empieza todo en vacio. Aqui se hacen todas las operaciones que se hagan antes, no importa que sean de varios objetos.
    return [CoreDataManager getAllCategories];
}

+(NSArray*)getNewsWithCategoryName:(NSString*) name{
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"name = %@",name];
    CDCategory * category = [CDCategory MR_findFirstWithPredicate:predicate];
    return [category.news allObjects];
}

@end
