//
//  RealmManager.m
//  ChalyCasillas
//
//  Created by Carlos Solano on 29/3/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import "RealmManager.h"
#import "User.h"
#import "Product.h"
#import "Shipment.h"
#import "Constants.h"

@implementation RealmManager

+(void)saveOrUpdateRealmObject:(RLMObject *) realmObject{
    // Get the default Realm
    RLMRealm *realm = [RLMRealm defaultRealm];
    // You only need to do this once (per thread)
    // Add to Realm with transaction
    [realm beginWriteTransaction];
    [realm addOrUpdateObject:realmObject];
    [realm commitWriteTransaction];
}

+(RLMResults*) getAllObjectsByType:(int)objectType{
    switch (objectType) {
        case USER_OBJECT_TYPE:
            return [User allObjects];
        case PRODUCT_OBJECT_TYPE:
            return [Product allObjects];
        case SHIPMENT_OBJECT_TYPE:
            return [Shipment allObjects];
        default:
            return nil;
    }
}

+(User*) getUserWithPhoneNumber:(NSString*)phoneNumber{
    User * user = [User objectForPrimaryKey:phoneNumber];
    return user;
}

+(void)createUserWithName:(NSString*)name phoneNumber:(NSString*)phoneNumber email:(NSString*)email active:(BOOL) active address:(NSString*)address{
    User * user = [[User alloc] init];
    user.name = name;
    user.phoneNumber = phoneNumber;
    user.email = email;
    user.active = active;
    user.address = address;
    [RealmManager saveOrUpdateRealmObject:user];
}

+(void) createProductWithTitle:(NSString*)productTitle observation:(NSString*)observation trackingNumber:(NSString*)trackingNumber courier:(NSString*)courier pounds:(int)pounds user:(User*)user currentState:(NSString*)currentState{
    Product * product = [[Product alloc]init];
    product.productTitle = productTitle;
    product.observation = observation;
    product.trackingNumber = trackingNumber;
    product.courier = courier;
    product.pounds = pounds;
    product.currentState = currentState;
    product.user = user;
    [RealmManager saveOrUpdateRealmObject:product];
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm beginWriteTransaction];
    [user.products addObject:product];
    [realm commitWriteTransaction];
}

@end
