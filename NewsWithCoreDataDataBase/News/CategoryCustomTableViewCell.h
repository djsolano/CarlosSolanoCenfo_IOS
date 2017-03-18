//
//  CategoryCustomTableViewCell.h
//  News
//
//  Created by Estudiantes on 18/2/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Category;

@interface CategoryCustomTableViewCell : UITableViewCell
-(void) configureCellWithCategory:(Category*) category;
@end
