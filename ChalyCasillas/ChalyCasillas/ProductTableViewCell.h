//
//  ProductTableViewCell.h
//  ChalyCasillas
//
//  Created by Carlos Solano on 3/26/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Product;

@interface ProductTableViewCell : UITableViewCell
-(void)setupCellWithProduct:(Product*)product;
@end
