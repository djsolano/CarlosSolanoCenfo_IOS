//
//  Dog.h
//  Tarea4
//
//  Created by Carlos Solano on 28/2/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>

@interface Dog : RLMObject
@property NSString * name;
@property NSString * image;
@property NSString * color;
@property NSString * location;
@property NSNumber<RLMInt> * age;
@property NSString * contactInformation;
@end
RLM_ARRAY_TYPE(Dog)
