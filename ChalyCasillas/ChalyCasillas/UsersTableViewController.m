//
//  UsersTableViewController.m
//  ChalyCasillas
//
//  Created by Carlos Solano on 3/26/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import "UsersTableViewController.h"
#import "AddUserTableViewController.h"
#import "UIViewController+LMSideBarController.h"
#import "RealmManager.h"
#import "Constants.h"
#import "User.h"

@interface UsersTableViewController ()
@property RLMResults * userArray;
@property (strong, nonatomic) IBOutlet UITableView *usersTableView;
@end

@implementation UsersTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addUserButton];
    [self addMenuButton];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
     //self.navigationItem.leftBarButtonItem = self.editButtonItem;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self loadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadData{
    self.userArray = [RealmManager getAllObjectsByType:USER_OBJECT_TYPE];
    [self.usersTableView reloadData];
}

#pragma mark - Table view data source

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    AddUserTableViewController *addUserTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AddUserTableViewController"];
    addUserTableViewController.user = self.userArray[indexPath.row];
    [self.navigationController pushViewController:addUserTableViewController animated:true];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.userArray.count;
}

-(void) addUserButton{
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addUserAction)];
    self.navigationItem.rightBarButtonItem = addButton;
}

-(void) addUserAction{
    AddUserTableViewController *addUserViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AddUserTableViewController"];
    [self.navigationController pushViewController:addUserViewController animated:true];
}

-(void) addMenuButton{
    UIImage *image = [[UIImage imageNamed:@"btn_left_menu"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(menuAction)];
    self.navigationItem.leftBarButtonItem = addButton;
}

-(void) menuAction{
    [self.sideBarController showMenuViewControllerInDirection:LMSideBarControllerDirectionLeft];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"userTableCell" forIndexPath:indexPath];
    User* user = self.userArray[indexPath.row];
    cell.textLabel.text = user.name;
    cell.detailTextLabel.text = user.phoneNumber;
    return cell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [RealmManager deleteRealObject:self.userArray[indexPath.row]];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }  
}


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
