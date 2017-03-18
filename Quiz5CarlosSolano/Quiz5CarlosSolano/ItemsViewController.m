//
//  ItemsViewController.m
//  Quiz5CarlosSolano
//
//  Created by Estudiantes on 18/3/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import "ItemsViewController.h"
#import "ItemCustomTableViewCell.h"
#import "CoreDataManager.h"
#import "CDItems.h"
#import "AddItemViewController.h"

@interface ItemsViewController ()
@property (weak, nonatomic) IBOutlet UITableView *itemsTableView;
@property (strong,nonatomic) NSArray * dataSource;
@end

@implementation ItemsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerCustomCell];
    [self addCreateButtonNavegationController];
    //[self loadData];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self loadData];
    [self.itemsTableView reloadData];
}

-(void)addCreateButtonNavegationController{
    UIBarButtonItem *add = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addItemAction)];
    self.navigationItem.rightBarButtonItem = add;
}

-(void)addItemAction{
        AddItemViewController *addItemViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AddItemViewController"];
    [self.navigationController pushViewController:addItemViewController animated:true];
}

-(void) loadData{
    self.dataSource = [CoreDataManager getAllItems];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ItemCustomTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"ItemCustomTableViewCell"];
    [cell configureCellWithItem:self.dataSource [indexPath.row]];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSource.count;
}

-(void)registerCustomCell{
    NSString * identifier = [ItemCustomTableViewCell getIdentifier];
    UINib *nib = [UINib nibWithNibName:identifier bundle:nil];
    [self.itemsTableView registerNib:nib forCellReuseIdentifier: identifier];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
