//
//  CategoryViewController.m
//  News
//
//  Created by Estudiantes on 18/2/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import "CategoryViewController.h"
#import "CategoryCustomTableViewCell.h"
#import "UITableView+RegisterCustomCell.h"
#import "UITableViewCell+GetClassName.h"
#import "Category.h"
#import "NewsViewController.h"
#import "RealmManager.h"
#import <Realm/Realm.h>

@interface CategoryViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property RLMResults * categoryArray;
@end

@implementation CategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerCustomCellWithName:[CategoryCustomTableViewCell getClassName]];
    [self loadCategories];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)loadCategories{
    self.categoryArray = [RealmManager getAllCategories];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPat{
    CategoryCustomTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:[CategoryCustomTableViewCell getClassName]];
    Category* currentCategory = self.categoryArray[indexPat.row];
    [cell configureCellWithCategory:currentCategory];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NewsViewController *newsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"NewsViewController"];
    Category * categorySelected = self.categoryArray[indexPath.row];
    newsViewController.categoryName = categorySelected.name;
    [self.navigationController pushViewController:newsViewController animated:true];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.categoryArray.count;
}

@end
