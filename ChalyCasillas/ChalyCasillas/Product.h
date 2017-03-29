//
//  Product.h
//  ChalyCasillas
//
//  Created by Carlos Solano on 3/28/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
@class User;
@class Shipment;

@interface Product : RLMObject
@property NSString* productTitle;
@property NSString* observation;
@property NSString* trackingNumber;
@property NSString* courier;
@property int pounds;
@property User*     user;
@property Shipment* shipment;
@property NSString* currentState;

@end
RLM_ARRAY_TYPE(Product)
