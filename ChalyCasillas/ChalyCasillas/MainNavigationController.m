//
//  MainNavigationController.m
//  ChalyCasillas
//
//  Created by Carlos Solano on 3/25/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import "MainNavigationController.h"

@interface MainNavigationController ()

@end

@implementation MainNavigationController

- (HomeViewController *)homeViewController
{
    if (!_homeViewController) {
        _homeViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeViewController"];
    }
    return _homeViewController;
}

- (ProductListViewController *)productListViewController
{
    if (!_productListViewController) {
        _productListViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"ProductListViewController"];
    }
    return _productListViewController;
}

- (UsersTableViewController *)usersTableViewController
{
    if (!_usersTableViewController) {
        _usersTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"UsersTableViewController"];
    }
    return _usersTableViewController;
}

- (void)showHomeViewController
{
    [self setViewControllers:@[self.homeViewController] animated:YES];
}

- (void)showProductListViewController
{
    [self setViewControllers:@[self.productListViewController] animated:YES];
}

- (void)showUsersTableViewController{
    [self setViewControllers:@[self.usersTableViewController] animated:YES];
}

@end
