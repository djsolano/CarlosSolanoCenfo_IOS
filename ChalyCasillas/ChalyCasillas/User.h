//
//  User.h
//  ChalyCasillas
//
//  Created by Carlos Solano on 3/28/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
#import "Product.h"

@interface User : RLMObject
@property NSString* name;
@property NSString* phoneNumber;
@property NSString* email;
@property BOOL      active;
@property RLMArray<Product *><Product> *products;
@end
RLM_ARRAY_TYPE(User)
