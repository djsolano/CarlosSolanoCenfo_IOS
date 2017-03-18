//
//  CoreDataManager.h
//  News
//
//  Created by Estudiantes on 11/3/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoreDataManager : NSObject
+(NSArray*) insertCategories;
+(NSArray *)getAllCategories;
+(NSArray*)getNewsWithCategoryName:(NSString*) name;
@end
