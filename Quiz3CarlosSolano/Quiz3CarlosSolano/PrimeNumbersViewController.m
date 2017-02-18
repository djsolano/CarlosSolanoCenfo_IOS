//
//  ViewController.m
//  Quiz3CarlosSolano
//
//  Created by Estudiantes on 18/2/17.
//  Copyright © 2017 Estudiantes. All rights reserved.
//

#import "PrimeNumbersViewController.h"
#import "PrimeCustomTableViewCell.h"

@interface PrimeNumbersViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSMutableArray * dataSource;
@end

@implementation PrimeNumbersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerCustomCell];
    [self loadDataSource];}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PrimeCustomTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"PrimeCustomTableViewCell"];
    [cell setUpCellWithNumber:self.dataSource [indexPath.row]];
    return cell;
}

-(void)registerCustomCell{
    NSString * identifier = [PrimeCustomTableViewCell getIdentifier];
    UINib *nib = [UINib nibWithNibName:identifier bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier: identifier];
}

-(void) loadDataSource{
    self.dataSource = [NSMutableArray new];
    for(int i=1;i<=1000;i++){
        if([self is_prime:i]){
            [self.dataSource addObject:[NSString stringWithFormat:@"%d",i]];
        }
    }
}

-(BOOL) is_prime:(int) num
{
    if (num <= 1) return NO;
    if (num % 2 == 0 && num > 2) return NO;
    for(int i = 3; i < num / 2; i+= 2)
    {
        if (num % i == 0)
            return NO;
    }
    return YES;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSource.count;
}
@end
