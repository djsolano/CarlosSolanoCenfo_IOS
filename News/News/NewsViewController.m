//
//  NewsViewController.m
//  News
//
//  Created by Estudiantes on 18/2/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import "NewsViewController.h"
#import "Category.h"
#import "NewsDetailTableViewController.h"
#import "NewsTableViewCell.h"
#import "UITableView+RegisterCustomCell.h"
#import "UITableViewCell+GetClassName.h"
#import "News.h"

@interface NewsViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation NewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerCustomCellWithName:[NewsTableViewCell getClassName]];
    self.title = self.categorySelected.name;
    [self addNewsButton];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.categorySelected.newsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NewsTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:[NewsTableViewCell getClassName]];
    News * news = self.categorySelected.newsArray[indexPath.row];
    [cell setupCellWithNews:news];
    return cell;
}

-(void) addNewsButton{
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addNewsAction)];
    self.navigationItem.rightBarButtonItem = addButton;
}

-(void) addNewsAction{
    NewsDetailTableViewController *newsDetailTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"NewsDetailTableViewController"];
    [self.navigationController pushViewController:newsDetailTableViewController animated:true];
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
