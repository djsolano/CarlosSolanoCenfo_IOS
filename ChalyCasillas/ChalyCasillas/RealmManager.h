//
//  RealmManager.h
//  ChalyCasillas
//
//  Created by Carlos Solano on 29/3/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
@class User;

@interface RealmManager : NSObject
+(void)saveOrUpdateRealmObject:(RLMObject *) realmObject;
+(void)createUserWithName:(NSString*)name phoneNumber:(NSString*)phoneNumber email:(NSString*)email active:(BOOL) active address:(NSString*)address;
+(void) createProductWithTitle:(NSString*)productTitle observation:(NSString*)observation trackingNumber:(NSString*)trackingNumber courier:(NSString*)courier pounds:(int)pounds user:(User*)user currentState:(NSString*)currentState;
+(RLMResults*) getAllObjectsByType:(int)objectType;
+(User*) getUserWithPhoneNumber:(NSString*)phoneNumber;
@end
