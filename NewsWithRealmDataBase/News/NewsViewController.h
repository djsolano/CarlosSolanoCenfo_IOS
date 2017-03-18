//
//  NewsViewController.h
//  News
//
//  Created by Estudiantes on 18/2/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RealmManager.h"

@interface NewsViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) NSString * categoryName;
@end
