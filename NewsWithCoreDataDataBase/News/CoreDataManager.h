//
//  CoreDataManager.h
//  News
//
//  Created by Estudiantes on 11/3/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CDCategory;

@interface CoreDataManager : NSObject
+(NSArray*) insertCategories;
+(NSArray *)getAllCategories;
+(NSArray*)getNewsWithCategoryName:(NSString*) name;
+(void) insertNewsWithTitle:(NSString *) title newsDescription:(NSString*) newsDescription categoryName:(NSString *) categoryName;
+(CDCategory *) getCategoryWithName:(NSString*) name;
@end
