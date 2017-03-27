//
//  HomeViewController.m
//  ChalyCasillas
//
//  Created by Carlos Solano on 3/25/17.
//  Copyright © 2017 Carlos Solano. All rights reserved.
//

#import "HomeViewController.h"
#import "UIViewController+LMSideBarController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addMenuButton];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showMenu:(id)sender {
    [self.sideBarController showMenuViewControllerInDirection:LMSideBarControllerDirectionLeft];
}

-(void) addMenuButton{
    UIImage *image = [[UIImage imageNamed:@"btn_left_menu"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(menuAction)];
    self.navigationItem.leftBarButtonItem = addButton;
}

-(void) menuAction{
    [self.sideBarController showMenuViewControllerInDirection:LMSideBarControllerDirectionLeft];
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
