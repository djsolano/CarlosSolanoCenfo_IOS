//
//  NewsDetailTableViewController.h
//  News
//
//  Created by Estudiantes on 25/2/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Category;
#import "RealmManager.h"

@interface NewsDetailTableViewController : UITableViewController
@property(strong,nonatomic) Category * categorySelected;
@end
