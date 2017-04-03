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
#import "Product.h"

@interface RealmManager : NSObject
+(void)saveOrUpdateRealmObject:(RLMObject *) realmObject;
+(void)createUserWithName:(NSString*)name phoneNumber:(NSString*)phoneNumber email:(NSString*)email active:(BOOL) active address:(NSString*)address products:(RLMArray<Product *><Product> *)products;
+(void) createProductWithTitle:(NSString*)productTitle observation:(NSString*)observation trackingNumber:(NSString*)trackingNumber courier:(NSString*)courier pounds:(int)pounds user:(User*)user currentState:(NSString*)currentState;
+(RLMResults*) getAllObjectsByType:(int)objectType;
+(User*) getUserWithPhoneNumber:(NSString*)phoneNumber;
+(void)deleteRealObject:(RLMObject*) realmObject;
+(Product*)getProductWithTrackingNumber:(NSString*)trackingNumber;
@end
