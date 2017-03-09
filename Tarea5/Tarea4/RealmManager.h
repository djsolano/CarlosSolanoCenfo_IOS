//
//  RealmManager.h
//  Tarea4
//
//  Created by Carlos Solano on 9/3/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
@class Dog;

@interface RealmManager : NSObject
+(RLMResults*) getAllDogs;
@end
