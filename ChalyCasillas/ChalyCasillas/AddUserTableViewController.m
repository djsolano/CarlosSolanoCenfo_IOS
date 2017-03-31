//
//  AddUserTableViewController.m
//  ChalyCasillas
//
//  Created by Carlos Solano on 30/3/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import "AddUserTableViewController.h"
#import "RealmManager.h"
#import "User.h"

@interface AddUserTableViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;
@property (weak, nonatomic) IBOutlet UITextView *addressTextView;

@end

@implementation AddUserTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self saveUserButton];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) saveUserButton{
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveUserAction)];
    self.navigationItem.rightBarButtonItem = addButton;
}

-(void) saveUserAction{
    [RealmManager createUserWithName:self.nameTextField.text phoneNumber:self.phoneTextField.text email:self.emailTextField.text active:YES address:self.addressTextView.text];
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

@end
