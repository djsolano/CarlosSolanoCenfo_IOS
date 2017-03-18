//
//  CoreDataManager.h
//  Quiz5CarlosSolano
//
//  Created by Estudiantes on 18/3/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoreDataManager : NSObject
+(NSArray *)getAllItems;
+(void)insertItemsWithName:(NSString*) name quantity:(NSString *) quantity;
@end
