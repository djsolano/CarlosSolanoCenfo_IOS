//
//  NumbersViewController.m
//  Quiz4CarlosSolano
//
//  Created by Estudiantes on 25/2/17.
//  Copyright © 2017 quiz4. All rights reserved.
//

#import "NumbersViewController.h"
#import "NumberTableViewCell.h"

@interface NumbersViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UITextField *numberTextField;

@end

@implementation NumbersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registerCustomCell];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NumberTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:[NumberTableViewCell getIdentifier]];
    int rowNumber = indexPath.row + 1;
    int number = [self.numberTextField.text intValue];
    int total = number * rowNumber;
    NSString * cellText = [NSString stringWithFormat:@"%d X %d = %d",number,rowNumber,total];
    [cell setUpCellWithNumber:cellText];
    return cell;
}
- (IBAction)calculateNumber:(id)sender {
    [self.tableView reloadData];
    [self.view endEditing:YES];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150;
}

-(void)registerCustomCell{
    NSString * identifier = [NumberTableViewCell getIdentifier];
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
