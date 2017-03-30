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

@implementation RealmManager

+(void)saveRealmObject:(RLMObject *) realmObject{
    // Get the default Realm
    RLMRealm *realm = [RLMRealm defaultRealm];
    // You only need to do this once (per thread)
    // Add to Realm with transaction
    [realm beginWriteTransaction];
    [realm addObject:realmObject];
    [realm commitWriteTransaction];
}



@end
