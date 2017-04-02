//
//  ProductListViewController.m
//  ChalyCasillas
//
//  Created by Carlos Solano on 3/25/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import "ProductListViewController.h"
#import "UIViewController+LMSideBarController.h"
#import "UITableView+RegisterCustomCell.h"
#import "UITableViewCell+GetClassName.h"
#import "RealmManager.h"
#import "ProductTableViewCell.h"
#import "Product.h"
#import "Constants.h"
#import "User.h"
#import "AddProductTableViewController.h"

@interface ProductListViewController ()
@property (weak, nonatomic) IBOutlet UITableView *productsTableView;
@property RLMResults * productsArray;
@end

@implementation ProductListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.productsTableView registerCustomCellWithName:[ProductTableViewCell getClassName]];
    [self addMenuButton];
    [self addProductButton];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self loadData];
}

-(void) addProductButton{
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addProductAction)];
    self.navigationItem.rightBarButtonItem = addButton;
}

-(void) addProductAction{
    AddProductTableViewController *addProductViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"AddProductTableViewController"];
    [self.navigationController pushViewController:addProductViewController animated:true];
}

-(void)loadData{
    self.productsArray = [RealmManager getAllObjectsByType:PRODUCT_OBJECT_TYPE];
    [self.productsTableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ProductTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:[ProductTableViewCell getClassName]];
    Product * product = self.productsArray[indexPath.row];
    [cell setupCellWithProduct:product];
    return cell;
}

-(void) addMenuButton{
    UIImage *image = [[UIImage imageNamed:@"btn_left_menu"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(menuAction)];
    self.navigationItem.leftBarButtonItem = addButton;
}

-(void) menuAction{
    [self.sideBarController showMenuViewControllerInDirection:LMSideBarControllerDirectionLeft];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 130;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.productsArray.count;
}



@end
