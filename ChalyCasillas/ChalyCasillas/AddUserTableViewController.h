//
//  AddUserTableViewController.h
//  ChalyCasillas
//
//  Created by Carlos Solano on 30/3/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import <UIKit/UIKit.h>
@class User;

@interface AddUserTableViewController : UITableViewController<UIPickerViewDelegate,UIPickerViewDataSource>
@property(strong,nonatomic)User* user;
@end
