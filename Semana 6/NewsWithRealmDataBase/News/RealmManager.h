//
//  RealmManager.h
//  News
//
//  Created by Estudiantes on 4/3/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
@class Category;

@interface RealmManager : NSObject
+(RLMResults*) getAllCategories;
+(Category*) getCategoryWithName:(NSString*)name;
@end
