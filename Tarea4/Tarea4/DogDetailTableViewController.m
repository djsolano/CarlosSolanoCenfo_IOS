//
//  DogDetailTableViewController.m
//  Tarea4
//
//  Created by Carlos Solano on 2/3/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import "DogDetailTableViewController.h"
#import "Dog.h"

@interface DogDetailTableViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *dogImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *colorLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *contactLabel;

@end
/*
 @property(readonly) NSString * name;
 @property(readonly) NSString * color;
 @property(readonly) NSString * location;
 @property(readonly) NSNumber * age;
 @property(readonly) NSString * contactInformation;
 */

@implementation DogDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dogImageView.image = [UIImage imageNamed:self.selectedDog.image];
    self.nameLabel.text =[NSString stringWithFormat:@"Name: %@",self.selectedDog.name] ;
    self.colorLabel.text =[NSString stringWithFormat:@"Color: %@",self.selectedDog.color];
    self.locationLabel.text =[NSString stringWithFormat:@"Location: %@",self.selectedDog.location];
    self.ageLabel.text =[NSString stringWithFormat:@"Age: %d",[self.selectedDog.age intValue]] ;
    self.contactLabel.text =[NSString stringWithFormat:@"Contact: %@",self.selectedDog.contactInformation];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

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
