//
//  NewsViewController.m
//  News
//
//  Created by Estudiantes on 18/2/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import "NewsViewController.h"
#import "CDCategory.h"
#import "NewsDetailTableViewController.h"
#import "NewsTableViewCell.h"
#import "UITableView+RegisterCustomCell.h"
#import "UITableViewCell+GetClassName.h"
#import "CDNews.h"
#import "CoreDataManager.h"

@interface NewsViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray * news;

@end

@implementation NewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerCustomCellWithName:[NewsTableViewCell getClassName]];
    self.title = self.categorySelected;
    [self addNewsButton];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.news = [CoreDataManager getNewsWithCategoryName:self.categorySelected];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.news.count;
    //return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NewsTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:[NewsTableViewCell getClassName]];
    CDNews * news = self.news[indexPath.row];
//    News * news = self.categorySelected.newsArray[indexPath.row];
  [cell setupCellWithNews:news];
    return cell;
}

-(void) addNewsButton{
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addNewsAction)];
    self.navigationItem.rightBarButtonItem = addButton;
}

-(void) addNewsAction{
    NewsDetailTableViewController *newsDetailTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"NewsDetailTableViewController"];
    newsDetailTableViewController.categoryName = self.categorySelected;
    [self.navigationController pushViewController:newsDetailTableViewController animated:true];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
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