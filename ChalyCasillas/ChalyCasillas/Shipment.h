//
//  Shipment.h
//  ChalyCasillas
//
//  Created by Carlos Solano on 3/28/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Realm/Realm.h>
#import "Product.h"

@interface Shipment : RLMObject
@property NSString* invoiceNumber;
@property int totalPounds;
@property float totalAmount;
@property float pricePerPound;
@property RLMArray<Product *><Product> *products;
@end
RLM_ARRAY_TYPE(Shipment)
