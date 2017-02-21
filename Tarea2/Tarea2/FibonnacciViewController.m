//
//  FibonnacciViewController.m
//  Tarea2
//
//  Created by Carlos Solano on 21/2/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import "FibonnacciViewController.h"
#import "FibonacciTableViewCell.h"

@interface FibonnacciViewController ()
@property (strong,nonatomic) NSMutableArray * fibonnacyArray;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation FibonnacciViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerCustomCell];
    [self loadFibonnaciArray];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadFibonnaciArray{
    self.fibonnacyArray = [NSMutableArray new];
    for(int i = 1; i < 40; i++){//le puse 40 porque con más se pega
        [self.fibonnacyArray addObject:[NSString stringWithFormat:@"%d",[self fib:i]]];
    }
}

-(int)fib:(int)num{
    if (num == 0) {
        return 0;
    }
    if (num == 1) {
        return 1;
    }
    return [self fib:num - 1] + [self fib:num - 2];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.fibonnacyArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FibonacciTableViewCell * cell = [self.tableView dequeueReusableCellWithIdentifier:[FibonacciTableViewCell getIdentifier]];
    [cell configureCellWithNumber:self.fibonnacyArray[indexPath.row]];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 190;
}

-(void)registerCustomCell{
    NSString * identifier = [FibonacciTableViewCell getIdentifier];
    UINib *nib = [UINib nibWithNibName:identifier bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier: identifier];
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
