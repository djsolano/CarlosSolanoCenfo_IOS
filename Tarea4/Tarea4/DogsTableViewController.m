//
//  DogsTableViewController.m
//  Tarea4
//
//  Created by Carlos Solano on 28/2/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import "DogsTableViewController.h"
#import "DogTableViewCell.h"
#import "Dog.h"
#import "DogDetailTableViewController.h"

@interface DogsTableViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray * dogsArray;
@end

@implementation DogsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerCustomCell];
    [self loadData];
    
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dogsArray.count;
}

-(void) registerCustomCell{
    UINib *nib = [UINib nibWithNibName:[DogTableViewCell getIdentifier] bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:[DogTableViewCell getIdentifier]];
    
}

-(void) loadData{
    
    Dog * dog0 = [[Dog alloc]initDogWithName:@"Fido" image:@"Fido" color:@"Negro" location:@"Heredia" age:[NSNumber numberWithFloat:1.5] contactInformation:@"88112233"];
    Dog * dog1 = [[Dog alloc]initDogWithName:@"Kami" image:@"Kami" color:@"Blanco" location:@"San Jose" age:[NSNumber numberWithFloat:2.5] contactInformation:@"dosg@mail.com"];
    Dog * dog2 = [[Dog alloc]initDogWithName:@"Roy" image:@"Roy" color:@"Café" location:@"Alajuela" age:[NSNumber numberWithFloat:4.5] contactInformation:@"88114433"];
    Dog * dog3 = [[Dog alloc]initDogWithName:@"Terror" image:@"Terror" color:@"Negro y Blanco" location:@"Cartago" age:[NSNumber numberWithFloat:1.0] contactInformation:@"88112255"];
    Dog * dog4 = [[Dog alloc]initDogWithName:@"Flor" image:@"Flor" color:@"Cafè" location:@"Puntarenas" age:[NSNumber numberWithFloat:2.0] contactInformation:@"albergue@mail.com"];
    Dog * dog5 = [[Dog alloc]initDogWithName:@"Samurai" image:@"Samurai" color:@"Negro" location:@"San Jose" age:[NSNumber numberWithFloat:5] contactInformation:@"77112233"];
    Dog * dog6 = [[Dog alloc]initDogWithName:@"Bob" image:@"Bob" color:@"Blanco" location:@"Limon" age:[NSNumber numberWithFloat:2] contactInformation:@"87892233"];
    Dog * dog7 = [[Dog alloc]initDogWithName:@"Firulai" image:@"Firulai" color:@"Dorado" location:@"Heredia" age:[NSNumber numberWithFloat:10.5] contactInformation:@"firu@mail.com"];
    Dog * dog8 = [[Dog alloc]initDogWithName:@"Doggy" image:@"Doggy" color:@"Negro" location:@"Alajuela" age:[NSNumber numberWithFloat:1.5] contactInformation:@"22112233"];
    Dog * dog9 = [[Dog alloc]initDogWithName:@"Liza" image:@"Liza" color:@"Negro" location:@"Heredia" age:[NSNumber numberWithFloat:0.5] contactInformation:@"55332233"];

    self.dogsArray = [NSArray arrayWithObjects:dog0,dog1,dog2,dog3,dog4,dog5,dog6,dog7,dog8,dog9, nil];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    DogTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[DogTableViewCell getIdentifier] forIndexPath:indexPath];
    [cell initializeCellWithDog:self.dogsArray[indexPath.row]];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    DogDetailTableViewController * dogDetail = [self.storyboard instantiateViewControllerWithIdentifier:@"DogDetailTableViewController"];
    [self.navigationController pushViewController:dogDetail animated:YES];
}


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
