//
//  NewsDetailTableViewController.m
//  News
//
//  Created by Estudiantes on 25/2/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import "NewsDetailTableViewController.h"

@interface NewsDetailTableViewController ()

@end

@implementation NewsDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)hideKeyboards:(id)sender {
    [self.view endEditing:YES];
}


@end
