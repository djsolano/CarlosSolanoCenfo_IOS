//
//  AddProductTableViewController.m
//  ChalyCasillas
//
//  Created by Carlos Solano on 3/31/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import "AddProductTableViewController.h"
#import "RealmManager.h"
#import "User.h"
#import "Product.h"
#import "UMAlertView.h"
#import "Constants.h"

@interface AddProductTableViewController ()<UMAlertViewDelegate,UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *trackingTextField;
@property (weak, nonatomic) IBOutlet UITextField *courierTextField;
@property (weak, nonatomic) IBOutlet UITextField *pondsTextField;
@property (weak, nonatomic) IBOutlet UITextField *userTextField;
@property (weak, nonatomic) IBOutlet UITextField *statusTextField;
@property (weak, nonatomic) IBOutlet UITextView *observationTextView;
@property (nonatomic) UMAlertView *umCourierAlertView;
@property (nonatomic) UMAlertView *umPoundsAlertView;
@property (nonatomic) UMAlertView *umUserAlertView;
@property (nonatomic) UMAlertView *umStatusAlertView;

@end

@implementation AddProductTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self saveProductButton];
    self.umCourierAlertView = [[UMAlertView alloc] init];
    self.umCourierAlertView.delegate = self;
    
    self.umPoundsAlertView = [[UMAlertView alloc] init];
    self.umPoundsAlertView.delegate = self;
    
    self.umUserAlertView = [[UMAlertView alloc] init];
    self.umUserAlertView.delegate = self;
    
    self.umStatusAlertView = [[UMAlertView alloc] init];
    self.umStatusAlertView.delegate = self;

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) saveProductButton{
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveProductAction)];
    self.navigationItem.rightBarButtonItem = addButton;
}

-(void) saveProductAction{
    NSArray* myArray = [self.userTextField.text  componentsSeparatedByString:@"-"];
    NSString* phoneNumber = [myArray objectAtIndex:1];
    User* user = [RealmManager getUserWithPhoneNumber:phoneNumber];
    [RealmManager createProductWithTitle:self.titleTextField.text observation:self.observationTextView.text trackingNumber:self.trackingTextField.text courier:self.courierTextField.text pounds:[self.pondsTextField.text intValue] user:user currentState:self.statusTextField.text];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)selectUMAlertButton {
    if([self.umCourierAlertView selectData] != nil){
        [self.courierTextField setText:[self.umCourierAlertView selectData]];
        [self.umCourierAlertView um_dismissAlertViewCompletion:^{
            [self.courierTextField resignFirstResponder];
        }];
    }
    if([self.umPoundsAlertView selectData] != nil){
        [self.pondsTextField setText:[self.umPoundsAlertView selectData]];
        [self.umPoundsAlertView um_dismissAlertViewCompletion:^{
            [self.pondsTextField resignFirstResponder];
        }];
    }
    if([self.umUserAlertView selectData] != nil){
        [self.userTextField setText:[self.umUserAlertView selectData]];
        [self.umUserAlertView um_dismissAlertViewCompletion:^{
            [self.userTextField resignFirstResponder];
        }];
    }
    if([self.umStatusAlertView selectData] != nil){
        [self.statusTextField setText:[self.umStatusAlertView selectData]];
        [self.umStatusAlertView um_dismissAlertViewCompletion:^{
            [self.statusTextField resignFirstResponder];
        }];
    }
}

- (void)selectUMAlertCancelButton {
    [self.umCourierAlertView um_dismissAlertView];
    [self.umPoundsAlertView um_dismissAlertView];
    [self.umUserAlertView um_dismissAlertView];
    [self.umStatusAlertView um_dismissAlertView];
}

- (void)initializeAlertPicker:(UITextField *)textField {
    if(textField.tag == kCourierTextFieldTag){
        NSArray *array = [[NSArray alloc] initWithObjects:@"USPS", @"UPS", @"FEDEX", @"AMAZON LOGISTIC", @"CHINA POST", @"MALASYA POST", nil];
        [self.umCourierAlertView um_showAlertViewTitle:@"COURIER" pickerData:array haveCancelButton:YES completion:^{
        NSLog(@"UMCourierView show success");
        }];
    }
    if(textField.tag == kPoundsTextFieldTag){
        NSMutableArray *array = [NSMutableArray new];
        for (int i=1; i<71; i++) {
            [array addObject:[NSString stringWithFormat:@"%d",i]];
        }
        [self.umPoundsAlertView um_showAlertViewTitle:@"POUNDS" pickerData:array haveCancelButton:YES completion:^{
            NSLog(@"UMCourierView show success");
        }];
    }
    if(textField.tag == kUserTextFieldTag){
        RLMResults * usersArray = [RealmManager getAllObjectsByType:USER_OBJECT_TYPE];
        NSMutableArray *array = [NSMutableArray new];
        for (User* user in usersArray) {
            [array addObject:[NSString stringWithFormat:@"%@-%@",user.name,user.phoneNumber]];
        }
        [self.umUserAlertView um_showAlertViewTitle:@"USERS" pickerData:array haveCancelButton:YES completion:^{
            NSLog(@"UMCourierView show success");
        }];
    }
    if(textField.tag == kStatusTextFieldTag){
        NSArray *array = [[NSArray alloc] initWithObjects:@"SHIPPED FROM STORE", @"RECEIVED IN WAREHOUSE", @"SHIPPED TO COSTA RICA", @"READY TO PICK UP", @"DELIVERED TO CUSTOMER", nil];
        [self.umStatusAlertView um_showAlertViewTitle:@"STATUS" pickerData:array haveCancelButton:YES completion:^{
            NSLog(@"UMCourierView show success");
        }];
    }
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    [self initializeAlertPicker:textField];
    return NO;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 7;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
