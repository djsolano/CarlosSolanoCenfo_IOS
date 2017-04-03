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
    if(self.user != nil){
        self.nameTextField.text = self.user.name;
        self.emailTextField.text = self.user.email;
        self.phoneTextField.text = self.user.phoneNumber;
        self.phoneTextField.enabled = NO;
        self.addressTextView.text = self.user.address;
        NSLog(@"NUMERO %lu", (unsigned long)self.user.products.count);
    }
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
    UIBarButtonItem *addButton;
    if(self.user != nil){
        addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(saveUserAction)];
    }
    else{
        addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveUserAction)];
    }
    self.navigationItem.rightBarButtonItem = addButton;
}

-(void) saveUserAction{
    if(self.user != nil){
        [RealmManager createUserWithName:self.nameTextField.text phoneNumber:self.phoneTextField.text email:self.emailTextField.text active:YES address:self.addressTextView.text products:self.user.products];
    }
    else{
        [RealmManager createUserWithName:self.nameTextField.text phoneNumber:self.phoneTextField.text email:self.emailTextField.text active:YES address:self.addressTextView.text products:nil];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

#pragma mark - Picker view data source

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(self.user != nil){
        return self.user.products.count;
    }
    else{
        return 0;
    }
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if(self.user != nil){
        Product * product = self.user.products[row];
        return product.productTitle;
    }
    else{
        return @"";
    }
}

@end
