//
//  MainNavigationController.h
//  ChalyCasillas
//
//  Created by Carlos Solano on 3/25/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProductListViewController.h"
#import "HomeViewController.h"
#import "UsersTableViewController.h"

@interface MainNavigationController : UINavigationController

@property (nonatomic, strong) HomeViewController *homeViewController;
@property (nonatomic, strong) ProductListViewController *productListViewController;
@property (nonatomic, strong) UsersTableViewController *usersTableViewController;

- (void)showHomeViewController;
- (void)showProductListViewController;
- (void)showUsersTableViewController;

@end
